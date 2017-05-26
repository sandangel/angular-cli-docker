FROM node:boron

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y \
    && apt-get install -y apt-transport-https apt-utils \
    && apt-get dist-upgrade -y \
    && yarn global add @angular/cli@latest

EXPOSE 4200