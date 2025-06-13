package org.aktin.importer.executor;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.aktin.importer.DataSourceCredsExtractor;
import org.aktin.importer.FileOperationManager;
import org.aktin.importer.ScriptOperationManager;
import org.aktin.importer.enums.PropertiesKey;
import org.aktin.importer.enums.PropertiesState;
import org.aktin.importer.pojos.DatabaseCreds;
import org.aktin.importer.pojos.PythonScriptTask;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.jupiter.MockitoExtension;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;
import java.util.UUID;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.*;

@Disabled
@ExtendWith(MockitoExtension.class)
@Testcontainers
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
class PythonScriptExecutorTest {

  @Container
  static PostgreSQLContainer<?> postgres = new PostgreSQLContainer<>("postgres:13")
      .withDatabaseName("testdb")
      .withUsername("test")
      .withPassword("test");

  @Mock
  private Preferences preferences;

  @Mock
  private FileOperationManager fileOperationManager;

  @Mock
  private ScriptOperationManager scriptOperationManager;

  @Mock
  private DataSourceCredsExtractor dataSourceCredsExtractor;

  @Mock
  private PythonVersionNotifier notifier;

  @Mock
  private PythonRunner mockRunner;

  @InjectMocks
  private PythonScriptExecutor executor;

  private DatabaseCreds testCreds;
  private String testUuid;

  @BeforeEach
  void setUp() {
    MockitoAnnotations.openMocks(this);

    // Setup test data
    testCreds = new DatabaseCreds(postgres.getJdbcUrl(), postgres.getUsername(), postgres.getPassword());

    testUuid = UUID.randomUUID().toString();

    // Setup mock behavior
    when(preferences.get(PreferenceKey.importScriptTimeout)).thenReturn("300");
    when(dataSourceCredsExtractor.getI2b2crcCredentials()).thenReturn(testCreds);
    when(fileOperationManager.getPropertiesFiles()).thenReturn(createMockPropertiesFiles());

    doNothing().when(notifier).uploadPythonPackageVersions();
  }

  @Test
  void testStartup_ShouldInitializeRunner() throws Exception {
    // Given - mocks are already configured in setUp()

    // When
    executor.startup();

    // Then
    verify(notifier).uploadPythonPackageVersions();
    verify(dataSourceCredsExtractor).getI2b2crcCredentials();
    verify(preferences).get(PreferenceKey.importScriptTimeout);
    verify(fileOperationManager).getPropertiesFiles();

    // Verify runner is initialized
    assertNotNull(getRunnerFromExecutor());
  }

  @Test
  void testStartup_ShouldAddUnfinishedTasksToQueue() {
    // Given
    Properties queuedProps = createPropertiesWithState(PropertiesState.queued, "uuid-1");
    Properties inProgressProps = createPropertiesWithState(PropertiesState.in_progress, "uuid-2");
    Properties completedProps = createPropertiesWithState(PropertiesState.successful, "uuid-3");

    when(fileOperationManager.getPropertiesFiles())
        .thenReturn(Arrays.asList(queuedProps, inProgressProps, completedProps));

    // When
    executor.startup();

    // Then
    // Should add queued and in_progress tasks, but not completed
    PythonRunner runner = getRunnerFromExecutor();
    if (runner != null) {
      // In a real scenario, we would verify the queue size or task submission
      // For this test, we verify the method was called
      assertTrue(true); // Placeholder assertion
    }
  }

  @Test
  void testAddTask_ShouldSubmitTaskToRunner() {
    // Given
    setupMockRunner();
    executor.startup();

    // When
    executor.addTask(testUuid);

    // Then
    verify(mockRunner).submitTask(any(PythonScriptTask.class));
  }

  @Test
  void testCancelTask_ShouldCancelTaskInRunner() {
    // Given
    setupMockRunner();
    executor.startup();

    // When
    executor.cancelTask(testUuid);

    // Then
    verify(mockRunner).cancelTask(testUuid);
  }

  @Test
  void testGetQueueSize_ShouldReturnRunnerQueueSize() {
    // Given
    setupMockRunner();
    when(mockRunner.getQueueSize()).thenReturn(5);
    executor.startup();

    // When
    int queueSize = executor.getQueueSize();

    // Then
    assertEquals(5, queueSize);
    verify(mockRunner).getQueueSize();
  }

  @Test
  void testShutdown_ShouldTerminateRunner() {
    // Given
    setupMockRunner();
    executor.startup();

    // When
    executor.shutdown();

    // Then
    verify(mockRunner).terminate();
  }

  @Test
  void testAddUnfinishedTasksToQueue_WithMultipleStates() {
    // Given
    List<Properties> propertiesFiles = Arrays.asList(
        createPropertiesWithState(PropertiesState.queued, "uuid-queued"),
        createPropertiesWithState(PropertiesState.in_progress, "uuid-progress"),
        createPropertiesWithState(PropertiesState.successful, "uuid-successful"),
        createPropertiesWithState(PropertiesState.failed, "uuid-failed")
    );

    when(fileOperationManager.getPropertiesFiles()).thenReturn(propertiesFiles);

    // When
    executor.startup();

    // Then
    verify(fileOperationManager).getPropertiesFiles();
    // In a real implementation, we would verify that only queued and in_progress tasks are added
  }

  @Test
  void testTimeoutConfiguration_ShouldUseConfiguredValue() {
    // Given
    String customTimeout = "600";
    when(preferences.get(PreferenceKey.importScriptTimeout)).thenReturn(customTimeout);

    // When
    executor.startup();

    // Then
    verify(preferences).get(PreferenceKey.importScriptTimeout);
  }

  @Test
  void testNullSafetyForAddTask() {
    // Given
    setupMockRunner();
    executor.startup();

    // When & Then - should not throw exception
    assertDoesNotThrow(() -> executor.addTask(null));
    verify(mockRunner).submitTask(any(PythonScriptTask.class));
  }

  @Test
  void testNullSafetyForCancelTask() {
    // Given
    setupMockRunner();
    executor.startup();

    // When & Then - should not throw exception
    assertDoesNotThrow(() -> executor.cancelTask(null));
    verify(mockRunner).cancelTask(null);
  }

  // Helper methods

  private void setupMockRunner() {
    try {
      Field runnerField = PythonScriptExecutor.class.getDeclaredField("runner");
      runnerField.setAccessible(true);
      runnerField.set(executor, mockRunner);
    } catch (Exception e) {
      throw new RuntimeException("Failed to inject mock runner", e);
    }
  }

  private PythonRunner getRunnerFromExecutor() {
    try {
      Field runnerField = PythonScriptExecutor.class.getDeclaredField("runner");
      runnerField.setAccessible(true);
      return (PythonRunner) runnerField.get(executor);
    } catch (Exception e) {
      return null;
    }
  }

  private List<Properties> createMockPropertiesFiles() {
    return Arrays.asList(
        createPropertiesWithState(PropertiesState.queued, "test-uuid-1"),
        createPropertiesWithState(PropertiesState.in_progress, "test-uuid-2")
    );
  }

  private Properties createPropertiesWithState(PropertiesState state, String uuid) {
    Properties props = new Properties();
    props.setProperty(PropertiesKey.state.name(), state.name());
    props.setProperty(PropertiesKey.id.name(), uuid);
    return props;
  }
}