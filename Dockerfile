FROM node:stretch

RUN yarn global add @angular/cli@latest \
    && ng set --global packageManager=yarn

EXPOSE 4200
EXPOSE 3000
