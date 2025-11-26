FROM eclipse-temurin:11-jre-jammy
WORKDIR /app

ARG BUILD_TIME
ARG DWH_GITHUB_TAG

# OCI Standard Labels
LABEL org.opencontainers.image.created="${BUILD_TIME}" \
      org.opencontainers.image.authors="akombeiz@ukaachen.de" \
      org.opencontainers.image.source="https://github.com/aktin/dwh-import" \
      org.opencontainers.image.version="${DWH_GITHUB_TAG}" \
      org.opencontainers.image.vendor="AKTIN" \
      org.opencontainers.image.title="AKTIN DWH Demo Server" \
      org.opencontainers.image.description="Validation server for AKTIN DWH import (CDA/XML)"

# Directory for logging config to make mounting cleaner
RUN mkdir /app/config
VOLUME /app/config

COPY lib/ /app/lib/
COPY start.sh /app/
COPY logging.properties /app/config/

RUN chmod +x /app/start.sh

EXPOSE 8080
ENTRYPOINT ["/app/start.sh"]
