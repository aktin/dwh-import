FROM eclipse-temurin:11-jre-jammy
WORKDIR /app

# Demo server port (Default: 8080)
ARG PORT=8080
ENV SERVER_PORT=${PORT}

# Directory for logging config to make mounting cleaner
RUN mkdir /app/config
VOLUME /app/config

COPY lib/ /app/lib/
COPY start.sh /app/
COPY logging.properties /app/config/

RUN chmod +x /app/start.sh

EXPOSE ${PORT}
ENTRYPOINT ["/app/start.sh"]
