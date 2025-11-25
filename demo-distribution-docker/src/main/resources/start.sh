#!/bin/bash
# AKTIN : DWH Import : Demo Distribution

# Resolve the directory where the script is located
mydir="$(cd "$(dirname "$0")" && pwd)"

# Run Java
# We use "$mydir/lib/*" to include all jars found in the lib folder
exec java -Xmx1024m \
  -Djava.util.logging.config.file="$mydir/logging.properties" \
  -cp "$mydir/lib/*" \
  org.aktin.cda.etl.demo.Server "$@"


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


