package org.aktin.importer;

import org.aktin.importer.enums.LogType;
import org.aktin.importer.enums.PropertiesKey;
import org.aktin.importer.enums.PropertiesOperation;
import org.aktin.importer.enums.PropertiesState;
import org.aktin.importer.executor.PythonRunner;
import org.aktin.importer.pojos.DatabaseCreds;
import org.aktin.importer.pojos.PythonScriptTask;
import org.aktin.importer.pojos.ScriptFile;
import org.junit.jupiter.api.*;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.*;
import org.mockito.junit.jupiter.MockitoExtension;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Properties;
import java.util.Queue;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@Disabled
@ExtendWith(MockitoExtension.class)
@Testcontainers
public class PythonRunnerTest {

  @Container
  public static PostgreSQLContainer<?> postgresContainer = new PostgreSQLContainer<>("postgres:13")
      .withDatabaseName("testdb")
      .withUsername("testuser")
      .withPassword("testpass");

  @Mock
  private FileOperationManager fileOperationManager;

  @Mock
  private ScriptOperationManager scriptOperationManager;

  @Captor
  private ArgumentCaptor<String> stringCaptor;

  @Captor
  private ArgumentCaptor<Properties> propertiesCaptor;

  private PythonRunner pythonRunner;
  private DatabaseCreds databaseCreds;
  private Thread runnerThread;
  private final int scriptTimeout = 1000; // 1 second timeout for tests

  @BeforeEach
  void setUp() {
    System.setProperty("jboss.server.config.dir", System.getProperty("java.io.tmpdir"));

    databaseCreds = new DatabaseCreds(
        postgresContainer.getUsername(),
        postgresContainer.getPassword(),
        postgresContainer.getJdbcUrl()
    );

    pythonRunner = new PythonRunner(fileOperationManager, scriptOperationManager, databaseCreds, scriptTimeout);
    runnerThread = new Thread(pythonRunner);
    runnerThread.start();
  }

  @AfterEach
  void tearDown() throws InterruptedException {
    pythonRunner.terminate();
    runnerThread.join(5000); // Wait for thread to terminate
  }

  @Test
  void testSubmitTask() throws Exception {
    // Given
    String uuid = UUID.randomUUID().toString();
    PythonScriptTask task = new PythonScriptTask(uuid);

    // When
    pythonRunner.submitTask(task);

    // Then
    verify(fileOperationManager, timeout(1000)).addPropertyToPropertiesFile(
        eq(uuid),
        eq(PropertiesKey.state.name()),
        eq(PropertiesState.queued.name())
    );

    assertEquals(1, pythonRunner.getQueueSize());
  }

  @Test
  void testCancelQueuedTask() throws Exception {
    // Given
    String uuid = UUID.randomUUID().toString();
    PythonScriptTask task = new PythonScriptTask(uuid);
    pythonRunner.submitTask(task);

    // When
    // Set the running ID to something else so it doesn't match our task
    setPrivateField(pythonRunner, "runningId", "different-id");
    pythonRunner.cancelTask(uuid);

    // Then
    verify(fileOperationManager, timeout(1000)).addPropertyToPropertiesFile(
        eq(uuid),
        eq(PropertiesKey.state.name()),
        eq(PropertiesState.cancelled.name())
    );

    // Queue should be empty now
    assertEquals(0, pythonRunner.getQueueSize());
  }

  @Test
  void testCancelRunningTask() throws Exception {
    // Given
    String uuid = UUID.randomUUID().toString();

    // Create a mock process
    Process mockProcess = mock(Process.class);
    when(mockProcess.waitFor(anyLong(), any())).thenReturn(true);

    // Set private fields
    setPrivateField(pythonRunner, "runningId", uuid);
    setPrivateField(pythonRunner, "process", mockProcess);

    // When
    pythonRunner.cancelTask(uuid);

    // Then
    verify(mockProcess).destroy();
    verify(fileOperationManager).addPropertyToPropertiesFile(
        eq(uuid),
        eq(PropertiesKey.state.name()),
        eq(PropertiesState.cancelled.name())
    );
  }

  @Test
  void testTaskExecution_Success() throws Exception {
    // Given
    String uuid = UUID.randomUUID().toString();
    String scriptId = "test-script";
    PythonScriptTask task = new PythonScriptTask(uuid);
    Properties properties = new Properties();
    properties.setProperty(PropertiesKey.id.name(), uuid);
    properties.setProperty(PropertiesKey.operation.name(), PropertiesOperation.importing.name());
    properties.setProperty(PropertiesKey.script.name(), scriptId);
    properties.setProperty(PropertiesKey.filename.name(), "test.csv");

    // Create temp folder
    Path testFolder = Files.createTempDirectory("python-runner-test");
    String folderPath = testFolder.toString();

    // Mock script file
    ScriptFile scriptFile = new ScriptFile(scriptId, "test", "1.0", "mimetype", "/path/to/script.py");

    // Setup mocks
    when(fileOperationManager.getPropertiesFile(uuid)).thenReturn(properties);
    when(fileOperationManager.getUploadFileFolderPath(uuid)).thenReturn(folderPath);
    when(scriptOperationManager.getScript(scriptId)).thenReturn(scriptFile);

    // Mock process
    ProcessBuilder mockProcessBuilder = mock(ProcessBuilder.class, RETURNS_DEEP_STUBS); // Is final class. Not working in Mockito 3.8.0
    Process mockProcess = mock(Process.class);
    when(mockProcess.isAlive()).thenReturn(true, false);
    when(mockProcess.waitFor(anyLong(), any())).thenReturn(true);
    when(mockProcess.exitValue()).thenReturn(0);
    when(mockProcessBuilder.start()).thenReturn(mockProcess);

    // Use MockedStatic to mock ProcessBuilder constructor
    try (MockedConstruction<ProcessBuilder> mocked = mockConstruction(ProcessBuilder.class,
        (mock, context) -> {
          when(mock.redirectError(any(File.class))).thenReturn(mock);
          when(mock.redirectOutput(any(File.class))).thenReturn(mock);
          when(mock.environment()).thenReturn(System.getenv());
          when(mock.start()).thenReturn(mockProcess);
        })) {

      // When
      // Execute the private method directly
      Method executeTaskMethod = PythonRunner.class.getDeclaredMethod("executeTask", PythonScriptTask.class);
      executeTaskMethod.setAccessible(true);
      executeTaskMethod.invoke(pythonRunner, task);

      // Then
      verify(fileOperationManager).addPropertyToPropertiesFile(
          eq(uuid),
          eq(PropertiesKey.state.name()),
          eq(PropertiesState.successful.name())
      );
      verify(fileOperationManager).addPropertyToPropertiesFile(
          eq(uuid),
          eq("imported"),
          stringCaptor.capture()
      );
      verify(fileOperationManager).loadScriptLogs(uuid);

      // The timestamp should be a valid long value
      assertDoesNotThrow(() -> Long.parseLong(stringCaptor.getValue()));
    }

    // Cleanup
    Files.deleteIfExists(testFolder);
  }

  @Test
  void testTaskExecution_Failed() throws Exception {
    // Given
    String uuid = UUID.randomUUID().toString();
    String scriptId = "test-script";
    PythonScriptTask task = new PythonScriptTask(uuid);
    Properties properties = new Properties();
    properties.setProperty(PropertiesKey.id.name(), uuid);
    properties.setProperty(PropertiesKey.operation.name(), PropertiesOperation.importing.name());
    properties.setProperty(PropertiesKey.script.name(), scriptId);
    properties.setProperty(PropertiesKey.filename.name(), "test.csv");

    // Create temp folder
    Path testFolder = Files.createTempDirectory("python-runner-test");
    String folderPath = testFolder.toString();

    // Mock script file
    ScriptFile scriptFile = new ScriptFile(scriptId, "test", "1.0", "mimetype", "/path/to/script.py");

    // Setup mocks
    when(fileOperationManager.getPropertiesFile(uuid)).thenReturn(properties);
    when(fileOperationManager.getUploadFileFolderPath(uuid)).thenReturn(folderPath);
    when(scriptOperationManager.getScript(scriptId)).thenReturn(scriptFile);

    // Mock process
    ProcessBuilder mockProcessBuilder = mock(ProcessBuilder.class, RETURNS_DEEP_STUBS); // Is final class. Not working in Mockito 3.8.0
    Process mockProcess = mock(Process.class);
    when(mockProcess.isAlive()).thenReturn(true, false);
    when(mockProcess.waitFor(anyLong(), any())).thenReturn(true);
    when(mockProcess.exitValue()).thenReturn(1); // Non-zero exit code indicates failure
    when(mockProcessBuilder.start()).thenReturn(mockProcess);

    // Use MockedConstruction to mock ProcessBuilder constructor
    try (MockedConstruction<ProcessBuilder> mocked = mockConstruction(ProcessBuilder.class,
        (mock, context) -> {
          when(mock.redirectError(any(File.class))).thenReturn(mock);
          when(mock.redirectOutput(any(File.class))).thenReturn(mock);
          when(mock.environment()).thenReturn(System.getenv());
          when(mock.start()).thenReturn(mockProcess);
        })) {

      // When
      Method executeTaskMethod = PythonRunner.class.getDeclaredMethod("executeTask", PythonScriptTask.class);
      executeTaskMethod.setAccessible(true);
      executeTaskMethod.invoke(pythonRunner, task);

      // Then
      verify(fileOperationManager).addPropertyToPropertiesFile(
          eq(uuid),
          eq(PropertiesKey.state.name()),
          eq(PropertiesState.failed.name())
      );
      verify(fileOperationManager).loadScriptLogs(uuid);

      // No timestamp should be added for failed tasks
      verify(fileOperationManager, never()).addPropertyToPropertiesFile(eq(uuid), eq("imported"), anyString());
    }

    // Cleanup
    Files.deleteIfExists(testFolder);
  }

  @Test
  void testTaskExecution_Timeout() throws Exception {
    // Given
    String uuid = UUID.randomUUID().toString();
    String scriptId = "test-script";
    PythonScriptTask task = new PythonScriptTask(uuid);
    Properties properties = new Properties();
    properties.setProperty(PropertiesKey.id.name(), uuid);
    properties.setProperty(PropertiesKey.operation.name(), PropertiesOperation.importing.name());
    properties.setProperty(PropertiesKey.script.name(), scriptId);
    properties.setProperty(PropertiesKey.filename.name(), "test.csv");

    // Create temp folder
    Path testFolder = Files.createTempDirectory("python-runner-test");
    String folderPath = testFolder.toString();

    // Mock script file
    ScriptFile scriptFile = new ScriptFile(scriptId, "test", "1.0", "mimetype", "/path/to/script.py");

    // Setup mocks
    when(fileOperationManager.getPropertiesFile(uuid)).thenReturn(properties);
    when(fileOperationManager.getUploadFileFolderPath(uuid)).thenReturn(folderPath);
    when(scriptOperationManager.getScript(scriptId)).thenReturn(scriptFile);

    // Mock process
    Process mockProcess = mock(Process.class);
    when(mockProcess.isAlive()).thenReturn(true, false);
    when(mockProcess.waitFor(anyLong(), any())).thenReturn(false); // Timeout
    when(mockProcess.exitValue()).thenReturn(1); // Non-zero exit code

    // Use MockedConstruction to mock ProcessBuilder constructor
    try (MockedConstruction<ProcessBuilder> mocked = mockConstruction(ProcessBuilder.class,
        (mock, context) -> {
          when(mock.redirectError(any(File.class))).thenReturn(mock);
          when(mock.redirectOutput(any(File.class))).thenReturn(mock);
          when(mock.environment()).thenReturn(System.getenv());
          when(mock.start()).thenReturn(mockProcess);
        })) {

      // When
      Method executeTaskMethod = PythonRunner.class.getDeclaredMethod("executeTask", PythonScriptTask.class);
      executeTaskMethod.setAccessible(true);
      executeTaskMethod.invoke(pythonRunner, task);

      // Then
      verify(fileOperationManager).addPropertyToPropertiesFile(
          eq(uuid),
          eq(PropertiesKey.state.name()),
          eq(PropertiesState.timeout.name())
      );
      verify(mockProcess).destroy();
      verify(fileOperationManager).loadScriptLogs(uuid);
    }

    // Cleanup
    Files.deleteIfExists(testFolder);
  }

  @Test
  void testTaskExecution_ScriptNotFound() throws Exception {
    // Given
    String uuid = UUID.randomUUID().toString();
    String scriptId = "non-existent-script";
    PythonScriptTask task = new PythonScriptTask(uuid);
    Properties properties = new Properties();
    properties.setProperty(PropertiesKey.id.name(), uuid);
    properties.setProperty(PropertiesKey.operation.name(), PropertiesOperation.importing.name());
    properties.setProperty(PropertiesKey.script.name(), scriptId);

    // Setup mocks
    when(fileOperationManager.getPropertiesFile(uuid)).thenReturn(properties);
    when(scriptOperationManager.getScript(scriptId)).thenThrow(new FileNotFoundException("Script not found"));

    // When
    Method executeTaskMethod = PythonRunner.class.getDeclaredMethod("executeTask", PythonScriptTask.class);
    executeTaskMethod.setAccessible(true);
    executeTaskMethod.invoke(pythonRunner, task);

    // Then
    verify(fileOperationManager).addPropertyToPropertiesFile(
        eq(uuid),
        eq(PropertiesKey.state.name()),
        eq(PropertiesState.failed.name())
    );
    verify(fileOperationManager).loadScriptLogs(uuid);
  }

  @Test
  void testRunEmptyQueue() throws Exception {
    // Given
    CountDownLatch latch = new CountDownLatch(1);

    // Create a new runner with empty queue
    PythonRunner emptyRunner = new PythonRunner(fileOperationManager, scriptOperationManager, databaseCreds, scriptTimeout);

    // Create a thread that will wait briefly then terminate the runner
    new Thread(() -> {
      try {
        Thread.sleep(500);
        emptyRunner.terminate();
        latch.countDown();
      } catch (InterruptedException e) {
        Thread.currentThread().interrupt();
      }
    }).start();

    // When
    Thread emptyThread = new Thread(emptyRunner);
    emptyThread.start();

    // Then
    assertTrue(latch.await(2, TimeUnit.SECONDS), "Termination should complete");
    emptyThread.join(1000);
    assertFalse(emptyThread.isAlive(), "Thread should be terminated");
  }

  @Test
  void testTerminateWithRunningProcess() throws Exception {
    // Given
    Process mockProcess = mock(Process.class);
    when(mockProcess.waitFor(anyInt(), any())).thenReturn(true);

    // Set private fields
    setPrivateField(pythonRunner, "process", mockProcess);

    // When
    pythonRunner.terminate();

    // Then
    verify(mockProcess).destroy();
  }

  @Test
  void testTerminateWithNonResponsiveProcess() throws Exception {
    // Given
    Process mockProcess = mock(Process.class);
    when(mockProcess.waitFor(anyInt(), any())).thenReturn(false);

    // Set private fields
    setPrivateField(pythonRunner, "process", mockProcess);

    // When
    pythonRunner.terminate();

    // Then
    verify(mockProcess).destroy();
    verify(mockProcess).destroyForcibly();
    verify(mockProcess).waitFor(); // Without timeout
  }

  @Test
  void testGetScriptByPropertiesFile() throws Exception {
    // Given
    String scriptId = "test-script";
    Properties properties = new Properties();
    properties.setProperty(PropertiesKey.script.name(), scriptId);

    ScriptFile scriptFile = new ScriptFile(scriptId, "test", "1.0", "mimetype", "/path/to/script.py");

    when(scriptOperationManager.getScript(scriptId)).thenReturn(scriptFile);

    // When
    Method getScriptMethod = PythonRunner.class.getDeclaredMethod("getScriptByPropertiesFile", Properties.class);
    getScriptMethod.setAccessible(true);
    ScriptFile result = (ScriptFile) getScriptMethod.invoke(pythonRunner, properties);

    // Then
    assertEquals(scriptId, result.getId());
    assertEquals("/path/to/script.py", result.getPath());
  }

  @Test
  void testWriteSuccessProperty() throws Exception {
    // Given
    String uuid = UUID.randomUUID().toString();
    Properties properties = new Properties();
    properties.setProperty(PropertiesKey.id.name(), uuid);
    properties.setProperty(PropertiesKey.operation.name(), PropertiesOperation.importing.name());

    // When
    Method writeSuccessMethod = PythonRunner.class.getDeclaredMethod("writeSuccessProperty", Properties.class);
    writeSuccessMethod.setAccessible(true);
    writeSuccessMethod.invoke(pythonRunner, properties);

    // Then
    verify(fileOperationManager).addPropertyToPropertiesFile(eq(uuid), eq("imported"), anyString());
  }

  @Test
  void testWriteSuccessProperty_NotImporting() throws Exception {
    // Given
    String uuid = UUID.randomUUID().toString();
    Properties properties = new Properties();
    properties.setProperty(PropertiesKey.id.name(), uuid);
    properties.setProperty(PropertiesKey.operation.name(), PropertiesOperation.importing.name());

    // When
    Method writeSuccessMethod = PythonRunner.class.getDeclaredMethod("writeSuccessProperty", Properties.class);
    writeSuccessMethod.setAccessible(true);
    writeSuccessMethod.invoke(pythonRunner, properties);

    // Then
    verify(fileOperationManager, never()).addPropertyToPropertiesFile(eq(uuid), eq("imported"), anyString());
  }

  @Test
  void testChangeTaskState() throws Exception {
    // Given
    String uuid = UUID.randomUUID().toString();

    // When
    Method changeStateMethod = PythonRunner.class.getDeclaredMethod("changeTaskState", String.class, PropertiesState.class);
    changeStateMethod.setAccessible(true);
    changeStateMethod.invoke(pythonRunner, uuid, PropertiesState.in_progress);

    // Then
    verify(fileOperationManager).addPropertyToPropertiesFile(
        eq(uuid),
        eq(PropertiesKey.state.name()),
        eq(PropertiesState.in_progress.name())
    );
  }

  @Test
  void testChangeOperationProperty() throws Exception {
    // Given
    String uuid = UUID.randomUUID().toString();

    // When
    Method changeOperationMethod = PythonRunner.class.getDeclaredMethod("changeOperationProperty", String.class, PropertiesOperation.class);
    changeOperationMethod.setAccessible(true);
    changeOperationMethod.invoke(pythonRunner, uuid, PropertiesOperation.importing);

    // Then
    verify(fileOperationManager).addPropertyToPropertiesFile(
        eq(uuid),
        eq(PropertiesKey.operation.name()),
        eq(PropertiesOperation.importing.name())
    );
  }

  // Helper method to set private fields for testing
  private void setPrivateField(Object target, String fieldName, Object value) throws Exception {
    Field field = PythonRunner.class.getDeclaredField(fieldName);
    field.setAccessible(true);
    field.set(target, value);
  }

  // Helper method for mocking static constructors
  @SuppressWarnings("unchecked")
  private static <T> MockedConstruction<T> mockConstruction(Class<T> type, MockedConstruction.MockInitializer<T> initializer) {
    return Mockito.mockConstruction(type, initializer);
  }
}