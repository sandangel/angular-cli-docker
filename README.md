# angular-cli-docker

Angular CLI with Docker

## Problem
Node version manager, npm global, yarn global polute your HOME folder.

## Solve
Docker solve

## Prerequisites
make, docker and docker-compose preinstalled

## Set Up

### 1. Add Makefile and docker-compose.yml file to your project

### 2. At start script in package.json, include:

``` package.json
  "start": "ng serve -host 0.0.0.0"
```

### 3. Run 
``` Makefile
# ng new ...(run fast with yarn will install all dependencies)
make new myWife

# yarn start
make # or make start

# yarn install
make install

# yarn add @angular/material
make add @angular/material

# ng generate component ...
make g-c SignUpComponent

# ng generate service ...
make g-s HttpService

# clean up container
make clean
```

## Conclusion
This makes your computer more clean, do not need to install nodejs, yarn, angular-cli...

This image only expose PORT 4200 as default of webpack, but you are free to run on any port by config docker-compose.yml -port

You can config docker-compose.yml to run your own image.

You can config Makefile for more angular-cli commands.

Good luck and have funs with your angular project
