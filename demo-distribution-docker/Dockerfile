FROM eclipse-temurin:11-jre
WORKDIR /app

# Copy the lib folder from the maven build context
COPY lib/ /app/lib/

# Copy the start script
COPY start.sh /app/
RUN chmod +x /app/start.sh

# Configuration (optional, can be overridden by volume)
COPY logging.properties /app/

EXPOSE 8080
ENTRYPOINT ["/app/start.sh"]