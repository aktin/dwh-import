package org.aktin.importer;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyList;
import static org.mockito.ArgumentMatchers.argThat;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.aktin.Preferences;
import org.aktin.dwh.BrokerResourceManager;
import org.aktin.dwh.PreferenceKey;
import org.aktin.dwh.SystemStatusManager;
import org.aktin.importer.enums.PropertiesKey;
import org.aktin.importer.enums.PropertiesState;
import org.aktin.importer.executor.PythonRunner;
import org.aktin.importer.executor.PythonScriptExecutor;
import org.aktin.importer.pojos.DatabaseCreds;
import org.aktin.importer.pojos.PythonScriptTask;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Spy;
import org.mockito.junit.jupiter.MockitoExtension;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;

@ExtendWith(MockitoExtension.class)
@Testcontainers
class PythonScriptExecutorTest {

  static class TestableScriptExecutor extends PythonScriptExecutor {

    public void exposedAddUnfinishedTasksToQueue() {
      this.addUnfinishedTasksToQueue();
    }

    public void setFileOperationManager(FileOperationManager fileOperationManager) {
      this.fileOperationManager = fileOperationManager;
    }

    public void setRunner(PythonRunner runner) {
      this.runner = runner;
    }
  }

  @Container
  public static PostgreSQLContainer<?> postgreSQLContainer = new PostgreSQLContainer<>("postgres:12").withDatabaseName("testdb").withUsername("testuser").withPassword("testpass");

  @Mock
  private SystemStatusManager systemStatusManager;

  @Mock
  private BrokerResourceManager brokerResourceManager;

  @Mock
  private Preferences preferences;

  @Mock
  private FileOperationManager fileOperationManager;

  @Mock
  private DataSourceCredsExtractor dataSourceCredsExtractor;

  @Mock
  private PythonRunner pythonRunner;

  @InjectMocks
  @Spy
  private PythonScriptExecutor pythonScriptExecutor;

  private TestableScriptExecutor testableExecutor;

  @BeforeEach
  void setUp() throws Exception {
    Field runnerField = PythonScriptExecutor.class.getDeclaredField("runner");
    runnerField.setAccessible(true);
    runnerField.set(pythonScriptExecutor, pythonRunner);

    testableExecutor = new TestableScriptExecutor();
    testableExecutor.setRunner(pythonRunner);
    testableExecutor.setFileOperationManager(fileOperationManager);
  }

  @Test
  void startup_InitializesPythonRunnerAndStartsThread() {
    Map<String, String> mockVersions = new HashMap<>();
    mockVersions.put("python3", "3.8.5");
    mockVersions.put("python3-pandas", "1.0.5");

    DatabaseCreds mockCreds = new DatabaseCreds("jdbc:url", "user", "pass");

    when(systemStatusManager.getLinuxPackagesVersion(anyList())).thenReturn(mockVersions);
    when(dataSourceCredsExtractor.getI2b2crcCredentials()).thenReturn(mockCreds);
    when(preferences.get(PreferenceKey.importScriptTimeout)).thenReturn("60");

    testableExecutor.exposedAddUnfinishedTasksToQueue();
    pythonScriptExecutor.startup();

    verify(brokerResourceManager).putMyResourceProperties(eq("python"), any(Properties.class));
    verify(dataSourceCredsExtractor).getI2b2crcCredentials();
    verify(preferences).get(PreferenceKey.importScriptTimeout);
    testableExecutor.exposedAddUnfinishedTasksToQueue();
  }

  @Test
  void testAddUnfinishedTasksToQueue() {
    Properties props1 = new Properties();
    props1.setProperty(PropertiesKey.state.name(), PropertiesState.queued.name());
    props1.setProperty(PropertiesKey.id.name(), "uuid1");

    Properties props2 = new Properties();
    props2.setProperty(PropertiesKey.state.name(), PropertiesState.in_progress.name());
    props2.setProperty(PropertiesKey.id.name(), "uuid2");

    Properties props3 = new Properties();
    props3.setProperty(PropertiesKey.state.name(), PropertiesState.successful.name());
    props3.setProperty(PropertiesKey.id.name(), "uuid3");

    List<Properties> allProps = Arrays.asList(props1, props2, props3);
    when(fileOperationManager.getPropertiesFiles()).thenReturn(allProps);

    testableExecutor.exposedAddUnfinishedTasksToQueue();

    verify(pythonRunner).submitTask(argThat(task -> "uuid1".equals(task.getId())));
    verify(pythonRunner).submitTask(argThat(task -> "uuid2".equals(task.getId())));
    verify(pythonRunner, never()).submitTask(argThat(task -> "uuid3".equals(task.getId())));
    verify(pythonRunner, times(2)).submitTask(any(PythonScriptTask.class));
  }


  @Test
  void testUploadPythonPackageVersions() {
    Map<String, String> mockVersions = new HashMap<>();
    mockVersions.put("python3", "3.8.5");
    mockVersions.put("python3-pandas", "1.0.5");
    when(systemStatusManager.getLinuxPackagesVersion(anyList())).thenReturn(mockVersions);

    testableExecutor.exposedAddUnfinishedTasksToQueue();

    when(dataSourceCredsExtractor.getI2b2crcCredentials()).thenReturn(new DatabaseCreds("", "", ""));
    when(preferences.get(PreferenceKey.importScriptTimeout)).thenReturn("60");

    pythonScriptExecutor.startup();

    verify(brokerResourceManager).putMyResourceProperties(eq("python"), any(Properties.class));
  }

  @Test
  void testCollectPythonPackageVersions() {
    Map<String, String> mockVersions = new HashMap<>();
    mockVersions.put("python3", "3.8.5");
    mockVersions.put("python3-pandas", "1.0.5");
    when(systemStatusManager.getLinuxPackagesVersion(anyList())).thenReturn(mockVersions);

    testableExecutor.exposedAddUnfinishedTasksToQueue();
    when(dataSourceCredsExtractor.getI2b2crcCredentials()).thenReturn(new DatabaseCreds("", "", ""));
    when(preferences.get(PreferenceKey.importScriptTimeout)).thenReturn("60");

    pythonScriptExecutor.startup();

    verify(systemStatusManager).getLinuxPackagesVersion(argThat(
        list -> list.contains("python3") && list.contains("python3-pandas") && list.contains("python3-numpy") && list.contains("python3-requests") && list.contains("python3-sqlalchemy")
            && list.contains("python3-psycopg2") && list.contains("python3-postgresql") && list.contains("python3-zipp") && list.contains("python3-plotly") && list.contains("python3-unicodecsv")
            && list.contains("python3-gunicorn")));
  }

  @Test
  void shutdown_TerminatesRunner() {
    pythonScriptExecutor.shutdown();

    verify(pythonRunner).terminate();
  }

  @Test
  void addTask_CreatesAndSubmitsTask() {
    String uuid = "test-uuid";

    pythonScriptExecutor.addTask(uuid);

    verify(pythonRunner).submitTask(argThat(task -> task.getId().equals(uuid)));
  }

  @Test
  void cancelTask_CallsRunnerToCancel() {
    String uuid = "test-uuid";

    pythonScriptExecutor.cancelTask(uuid);

    verify(pythonRunner).cancelTask(uuid);
  }

  @Test
  void getQueueSize_ReturnsRunnerQueueSize() {
    when(pythonRunner.getQueueSize()).thenReturn(5);

    int size = pythonScriptExecutor.getQueueSize();

    assertEquals(5, size);
    verify(pythonRunner).getQueueSize();
  }

  @Test
  void integrationTest_WithTestcontainer() {
    Map<String, String> mockVersions = new HashMap<>();
    mockVersions.put("python3", "3.8.5");
    mockVersions.put("python3-pandas", "1.0.5");

    DatabaseCreds mockCreds = new DatabaseCreds(postgreSQLContainer.getJdbcUrl(), postgreSQLContainer.getUsername(), postgreSQLContainer.getPassword());

    when(systemStatusManager.getLinuxPackagesVersion(anyList())).thenReturn(mockVersions);
    when(dataSourceCredsExtractor.getI2b2crcCredentials()).thenReturn(mockCreds);
    when(preferences.get(PreferenceKey.importScriptTimeout)).thenReturn("60");

    testableExecutor.exposedAddUnfinishedTasksToQueue();

    pythonScriptExecutor.startup();

    verify(brokerResourceManager).putMyResourceProperties(eq("python"), any(Properties.class));
    verify(dataSourceCredsExtractor).getI2b2crcCredentials();

    pythonScriptExecutor.shutdown();
  }

  @Test
  void testAllPaths_ComprehensiveCoverage() {
    Map<String, String> mockVersions = new HashMap<>();
    mockVersions.put("python3", "3.8.5");
    mockVersions.put("python3-pandas", "1.0.5");

    DatabaseCreds mockCreds = new DatabaseCreds("jdbc:url", "user", "pass");

    when(systemStatusManager.getLinuxPackagesVersion(anyList())).thenReturn(mockVersions);
    when(dataSourceCredsExtractor.getI2b2crcCredentials()).thenReturn(mockCreds);
    when(preferences.get(PreferenceKey.importScriptTimeout)).thenReturn("60");

    Properties queuedProps = new Properties();
    queuedProps.setProperty(PropertiesKey.state.name(), PropertiesState.queued.name());
    queuedProps.setProperty(PropertiesKey.id.name(), "uuid-queued");

    Properties inProgressProps = new Properties();
    inProgressProps.setProperty(PropertiesKey.state.name(), PropertiesState.in_progress.name());
    inProgressProps.setProperty(PropertiesKey.id.name(), "uuid-progress");

    Properties successfulProps = new Properties();
    successfulProps.setProperty(PropertiesKey.state.name(), PropertiesState.successful.name());
    successfulProps.setProperty(PropertiesKey.id.name(), "uuid-successful");

    List<Properties> allProps = Arrays.asList(queuedProps, inProgressProps, successfulProps);
    when(fileOperationManager.getPropertiesFiles()).thenReturn(allProps);

    testableExecutor.exposedAddUnfinishedTasksToQueue();

    pythonScriptExecutor.startup();
    pythonScriptExecutor.addTask("new-task");
    pythonScriptExecutor.cancelTask("uuid-progress");
    when(pythonRunner.getQueueSize()).thenReturn(1);
    int queueSize = pythonScriptExecutor.getQueueSize();
    pythonScriptExecutor.shutdown();

    assertEquals(1, queueSize);
    verify(pythonRunner).submitTask(argThat(task -> "new-task".equals(task.getId())));
    verify(pythonRunner).cancelTask("uuid-progress");
    verify(pythonRunner).terminate();
  }

}