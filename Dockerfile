FROM debian:bullseye-slim

WORKDIR /app

RUN apt update -y && apt install unzip curl -y

RUN curl -O http://edufs.edu.htl-leonding.ac.at/~t.stuetz/download/nvs/scripts/download-derbydb-and-jdk.sh && chmod +x ./download-derbydb-and-jdk.sh

RUN ./download-derbydb-and-jdk.sh java
RUN ./install-local-jdk-17.sh

COPY entrypoint.sh .

ENTRYPOINT /app/entrypoint.sh
