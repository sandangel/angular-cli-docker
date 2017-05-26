FROM node:boron

ENV DEBIAN_FRONTEND=noninteractive

RUN yarn global add @angular/cli@latest \
    && ng set --global packageManager=yarn

EXPOSE 4200
