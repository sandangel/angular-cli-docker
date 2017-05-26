PERM = chown -R $(shell stat -c '%u:%g' .) ./

ARGS = $(filter-out $@,$(MAKECMDGOALS))

#yarn

start:
	@docker-compose up

init:
	@docker-compose run --rm angular yarn init

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

#angular-cli

new:
	@docker-compose run --rm angular ng new $(ARGS)

g-c:
	@docker-compose run --rm angular sh -c "ng g c $(ARGS) && $(PERM)"

g-s:
	@docker-compose run --rm angular sh -c "ng g s $(ARGS) && $(PERM)"

build:
	@docker-compose run --rm angular ng build

build-prod:
	@docker-compose run --rm angular ng build -prod

%: ;

.PHONY: install serve upgrade clean add g-c g-s build build-prod upgrade-interactive add-dev
