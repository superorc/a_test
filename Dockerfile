FROM alpine:latest

RUN apk add bash curl zip openjdk11

SHELL ["/bin/bash", "-c"]

RUN curl -s https://get.sdkman.io | bash

RUN source /root/.sdkman/bin/sdkman-init.sh && sdk install kotlin 1.3.71
