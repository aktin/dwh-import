package org.aktin.importer;

import org.aktin.dwh.BrokerResourceManager;
import org.aktin.dwh.SystemStatusManager;
import org.aktin.importer.executor.PythonVersionNotifier;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.*;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.anyList;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class PythonVersionNotifierTest {

  @Mock
  private BrokerResourceManager brokerResourceManager;

  @Mock
  private SystemStatusManager systemStatusManager;

  @InjectMocks
  private PythonVersionNotifier notifier;

  @BeforeEach
  public void setUp() {

  }

  @Test
  public void testCollectPythonPackageVersions() {
    Map<String, String> mockVersions = new HashMap<>();
    mockVersions.put("python3", "3.8.10");
    mockVersions.put("python3-pandas", "1.1.5");

    when(systemStatusManager.getLinuxPackagesVersion(anyList())).thenReturn(mockVersions);

    Properties result = notifier.collectPythonPackageVersions();

    assertEquals("3.8.10", result.getProperty("python3"));
    assertEquals("1.1.5", result.getProperty("python3-pandas"));
    assertNull(result.getProperty("python3-numpy"));
  }

  @Test
  public void testUploadPythonPackageVersions() {
    Map<String, String> mockVersions = new HashMap<>();
    mockVersions.put("python3", "3.8.10");

    when(systemStatusManager.getLinuxPackagesVersion(anyList())).thenReturn(mockVersions);

    notifier.uploadPythonPackageVersions();

    ArgumentCaptor<Properties> captor = ArgumentCaptor.forClass(Properties.class);
    verify(brokerResourceManager).putMyResourceProperties(eq("python"), captor.capture());

    Properties captured = captor.getValue();
    assertEquals("3.8.10", captured.getProperty("python3"));
  }
}
