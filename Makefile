PERM = chown -R $(shell stat -c '%u:%g' .) ./

start:
	@docker-compose up

install:
	@docker-compose run --rm angular sh -c "yarn install && $(PERM)"

upgrade:
	@docker-compose run --rm angular yarn upgrade

clean:
	@docker-compose down

add:
	@docker-compose run --rm angular sh -c "yarn add $(PACK) && $(PERM)"

g-c:
	@docker-compose run --rm angular sh -c "ng g c $(COM) && $(PERM)"

g-s:
	@docker-compose run --rm angular sh -c "ng g s $(SER) && $(PERM)"

.PHONY: install serve upgrade clean add g-c g-s
