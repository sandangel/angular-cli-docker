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

### Note
You can config Makefile for more angular-cli commands.

But you have to give your own permission for files, directories created inside container so with commands that generate file or folder like "ng generate component ...", you have to specify like this:

``` Makefile
  g-c:
	@docker-compose run --rm angular sh -c "ng g c $(ARGS) && $(PERM)"
```
With $(PERM) is a command to give permission back to you.

This image only expose PORT 4200 as default of webpack, but you are free to run on any port by config docker-compose.yml -port or use your own image.


## Conclusion

This makes your computer more clean, do not need to install nodejs, yarn, angular-cli..., and do not need to add more $PATH.

Good luck and have funs with your angular project.
