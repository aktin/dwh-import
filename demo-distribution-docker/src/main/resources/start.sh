#!/bin/bash

"$JAVA_HOME"/bin/java -Xmx1024m \
  -cp "/app/lib/*" \
  -Djava.util.logging.config.file="/app/config/logging.properties" \
  org.aktin.cda.etl.demo.Server "8080"
