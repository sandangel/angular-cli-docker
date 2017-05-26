PERM = chown -R $(shell stat -c '%u:%g' .) ./

ARGS = $(filter-out $@,$(MAKECMDGOALS))

#yarn

start:
	@docker-compose up

init:
	@docker-compose run --rm angular sh -c "yarn init && $(PERM)"

install:
	@docker-compose run --rm angular sh -c "yarn install && $(PERM)"

upgrade:
	@docker-compose run --rm angular yarn upgrade

upgrade-interactive:
	@docker-compose run --rm angular yarn upgrade-interactive

clean:
	@docker-compose down

add:
	@docker-compose run --rm angular sh -c "yarn add $(ARGS) && $(PERM)"

add-dev:
	@docker-compose run --rm angular sh -c "yarn add -D $(ARGS) && $(PERM)"

remove:
	@docker-compose run --rm angular yarn remove $(ARGS)
	
.PHONY: start init install upgrade upgrade-interactive clean add add-dev remove

#angular-cli

new:
	@docker-compose run --rm angular sh -c "ng new $(ARGS) && $(PERM)"

g-c:
	@docker-compose run --rm angular sh -c "ng g c $(ARGS) && $(PERM)"

g-s:
	@docker-compose run --rm angular sh -c "ng g s $(ARGS) && $(PERM)"

build:
	@docker-compose run --rm angular ng build

build-prod:
	@docker-compose run --rm angular ng build -prod

%: ;

.PHONY: new g-c g-s build build-prod
