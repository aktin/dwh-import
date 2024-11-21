package org.aktin.importer.pojos;

public class DatabaseCreds {

  private final String username;
  private final String password;
  private final String connectionUrl;

  public DatabaseCreds(String username, String password, String connectionUrl) {
    this.username = username;
    this.password = password;
    this.connectionUrl = connectionUrl;
  }

  public String getUsername() {
    return username;
  }

  public String getPassword() {
    return password;
  }

  public String getConnectionUrl() {
    return connectionUrl;
  }
}
