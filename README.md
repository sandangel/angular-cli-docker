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
# yarn install
make install

# yarn start
make start

# yarn add @angular/material
make add PACK=@angular/material

# ng generate component ...
make g-c COM=...

# ng generate service ...
make g-s SER=...

```

## Conclusion
This makes your computer more clean, do not need to install nodejs, yarn, angular-cli...
You can config docker-compose.yml to run your own image
You can config Makefile for more angular-cli commands
Best way to run Angular CLI project.
