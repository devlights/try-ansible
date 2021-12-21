list:
	find ./playbooks -type f -name "*.yml" | xargs -I {} echo '{}' | sed -e 's@./playbooks/@@g'

build:
	DOCKER_BUILDKIT=1 docker-compose -f docker-compose.yml build --build-arg UID=$(shell id -u) --build-arg GID=$(shell id -g)

start: build
	DOCKER_BUILDKIT=1 docker-compose up -d

stop:
	DOCKER_BUILDKIT=1 docker-compose down

exec:
	rm -f playbooks/ansible.log
	DOCKER_BUILDKIT=1 docker-compose exec ansible bash

demo:
	DOCKER_BUILDKIT=1 docker-compose exec demo bash
