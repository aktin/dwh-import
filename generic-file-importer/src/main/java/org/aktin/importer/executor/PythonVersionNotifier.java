package org.aktin.importer.executor;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import javax.ejb.Singleton;
import javax.inject.Inject;
import org.aktin.dwh.BrokerResourceManager;
import org.aktin.dwh.SystemStatusManager;

@Singleton
public class PythonVersionNotifier {

  @Inject
  private BrokerResourceManager brokerResourceManager;

  @Inject
  private SystemStatusManager systemStatusManager;

  /**
   * Collect (hard-coded) Python apt packages and put them as a new resource group on the AKTIN Broker.
   */
  public void uploadPythonPackageVersions() {
    Properties versions_python = collectPythonPackageVersions();
    brokerResourceManager.putMyResourceProperties("python", versions_python);
  }

  /**
   * Iterate through a list of necessary Python packages and get the corresponding installed version. Package names are from apt package manager (ubuntu is default operating system on dwh)
   *
   * @return Properties with {package name} = {installed version}
   */
  public Properties collectPythonPackageVersions() {
    Properties properties = new Properties();
    List<String> packages_python = Arrays.asList("python3", "python3-pandas", "python3-numpy", "python3-requests", "python3-sqlalchemy", "python3-psycopg2", "python3-postgresql", "python3-zipp",
        "python3-plotly", "python3-unicodecsv", "python3-gunicorn");
    Map<String, String> versions_python = systemStatusManager.getLinuxPackagesVersion(packages_python);
    properties.putAll(versions_python);
    return properties;
  }
}
