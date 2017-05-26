FROM node:boron

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    apt-utils \
    && yarn global add @angular/cli@latest \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 4200
