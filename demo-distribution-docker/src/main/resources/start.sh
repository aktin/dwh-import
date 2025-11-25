#!/bin/bash

# Check if SERVER_PORT is set, otherwise default to 8080 (safety net)
: "${SERVER_PORT:=8080}"

"$JAVA_HOME"/bin/java -Xmx1024m \
  -Daktin.broker.password=CHANGEME \
  -Djava.util.logging.config.file=logging.properties \
  -cp lib/\* \
  org.aktin.broker.admin.standalone.HttpServer "${SERVER_PORT}"



  # java -Xmx1024m \
      #  -Djava.util.logging.config.file=logging.properties \
      #  -cp lib/\* \
      #  org.aktin.cda.etl.demo.Server 8080
      #
      #
      #
      #    --add-modules java.activation,java.xml.bind,java.xml.ws \
      #  --patch-module java.xml.ws.annotation="$mydir/lib/javax.annotation-api-1.2.jar" \
      #  --add-opens java.base/java.io=ALL-UNNAMED \


