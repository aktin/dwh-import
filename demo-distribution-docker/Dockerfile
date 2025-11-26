FROM eclipse-temurin:11-jre-jammy
WORKDIR /app

# Directory for logging config to make mounting cleaner
RUN mkdir /app/config
VOLUME /app/config

COPY lib/ /app/lib/
COPY start.sh /app/
COPY logging.properties /app/config/

RUN chmod +x /app/start.sh

EXPOSE 8080
ENTRYPOINT ["/app/start.sh"]
