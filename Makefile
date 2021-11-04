list:
	find ./playbooks -type f -name "*.yml" | xargs -I {} echo '{}' | sed -e 's@./playbooks/@@g'

build:
	docker-compose -f docker-compose.yml build

start:
	docker-compose up -d

stop:
	docker-compose down

exec:
	rm -f playbooks/ansible.log
	touch playbooks/ansible.log
	docker-compose exec ansible bash

demo:
	docker-compose exec demo bash
