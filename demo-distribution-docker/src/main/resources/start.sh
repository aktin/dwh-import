#!/bin/bash

# Check if SERVER_PORT is set, otherwise default to 8080 (safety net)
: "${SERVER_PORT:=8080}"

"$JAVA_HOME"/bin/java -Xmx1024m \
  -cp "/app/lib/*" \
  -Djava.util.logging.config.file="/app/config/logging.properties" \
  org.aktin.cda.etl.demo.Server "${SERVER_PORT}"
