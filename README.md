# angular-cli-docker

Angular CLI with Docker

## Problem
Node version manager, npm global, yarn global polute your HOME folder.

## Solve
Docker solve

## Prerequisites
make, docker and docker-compose preinstalled

## Set Up

### 1. Add Makefile and docker-compose.yml file to your existing project or where you will run "ng new"

``` bash
curl -o- -L https://raw.githubusercontent.com/sandangel/angular-cli-docker/master/install.sh | bash
```

### 2. At start script in package.json created by run "make new" (described below), include:

``` package.json
  "start": "ng serve -host 0.0.0.0"
```

## Run 
``` bash
# ng new ...(run fast with yarn will install all dependencies)
make new myWife

# yarn start. You have to move downloaded files to new created project.
mv Makefile docker-compose.yml myWife  && cd myWife

# include at start script "ng serve -host 0.0.0.0" then run
make # or make start


# more commands
# yarn init
make init

# yarn install all dependencies
make install

# yarn add @angular/material as dependencies
make add @angular/material

# yarn add -D @types/node as develop dependency
make add-dev @types/node

# ng generate component ...
make g-c SignUpComponent

# ng generate service ...
make g-s HttpService

# clean up container
make clean
```

### Config
You can config Makefile for more angular-cli commands.

But you have to give your own permission for files, directories created inside container. So with commands that generate file or folder like "ng generate component ...", you have to specify like this:

``` Makefile
  g-c:
	@docker-compose run --rm angular sh -c "ng g c $(ARGS) && $(PERM)"
```
With $(PERM) is a command that give file permission back to you.

$(ARGS) is command line argument after targets like "make g-c ...", "make add ..."

This image only expose PORT 4200 as default of webpack, but you are free to run on any port by config docker-compose.yml -port or use your own image.


## Conclusion

This makes your computer more clean, do not need to install nodejs, yarn, angular-cli..., and do not need to add more $PATH.

Good luck and have funs with your angular project.
