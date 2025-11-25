# AKTIN DWH Import: Demo Distribution Docker
This project provides a Dockerized version of the AKTIN DWH Demo Server. It is designed to act as a standalone validation environment where data providers can send Clinical Document Architecture (CDA) XML files to check if they are valid and compatible with the AKTIN Data Warehouse import process.

## Overview
- Function: Validates CDA XML documents against AKTIN DWH rules
- Base Image: eclipse-temurin:11-jre (Java 11 LTS)
- Prerequisites: Docker installed on your machine

## Getting the Docker Image
You can pull the pre-built image directly from the GitHub Container Registry (GHCR):
```bash
docker pull ghcr.io/aktin/demo-distribution-docker:latest
```

## Running the Container
### 1. Basic Start
Run this command to start the server. The container listens to port `8080` by default.
```bash
docker run ghcr.io/aktin/demo-distribution-docker:latest
```

### 2. Running on a Custom Port
If you want the server to be accessible on a custom port like `9090`, run:
```bash
docker run -e SERVER_PORT=9090 ghcr.io/aktin/demo-distribution-docker:latest
```
### 3. Custom Logging Configuration
The container uses a default `logging.properties` file. You can override this by mounting your own configuration file to `/app/config/logging.properties`.
```bash
# Ensure your local file exists first!
touch /path/to/my-custom-logging.properties

docker run -v /path/to/my-custom-logging.properties:/app/config/logging.properties \
  ghcr.io/aktin/demo-distribution-docker:latest
```

## Validating CDA Files
Once the server is running, you can validate CDA XML files by sending them via HTTP POST to the endpoint `http://<server-ip>:<port>/aktin/cda/fhir/Binary/`

### Example using cURL
Use the following command to validate a file named `my-cda-document.xml`:
```bash
curl -v \
  -H "Content-Type: application/xml" \
  -d "@my-cda-document.xml" \
  "http://localhost:8080/aktin/cda/fhir/Binary/"
```

### Interpreting the Response
* **HTTP 2xx:** The document was accepted and is valid.
* **HTTP 4xx/5xx:** The document is invalid or rejected. The response body usually contains details about the validation errors.
