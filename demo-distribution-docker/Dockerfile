FROM eclipse-temurin:11-jre
WORKDIR /app

# Define the build-time argument for the port (Default: 8080)
ARG PORT=8080

# Persist this as an environment variable for start.sh to read at runtime
ENV SERVER_PORT=${PORT}

COPY lib/ /app/lib/
COPY start.sh /app/
COPY logging.properties /app/

RUN chmod +x /app/start.sh

EXPOSE ${PORT}
ENTRYPOINT ["/app/start.sh"]
