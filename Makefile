PERM = chown -R $(shell stat -c '%u:%g' .) ./

ARGS = $(filter-out $@,$(MAKECMDGOALS))

#yarn

start:
	@docker-compose up

stop:
	@docker-compose down


restart:
	@docker-compose down
	@docker-compose up
	
.PHONY: start stop restart

#angular-cli

new:
	@docker-compose run --rm angular sh -c "ng new $(ARGS) --style=scss && $(PERM) && mv Makefile docker-compose.yml $(ARGS)"

%: ;

.PHONY: new
