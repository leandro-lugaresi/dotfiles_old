#!/bin/sh
alias d='docker'
alias compose='docker-compose'

docker_prune() {
	docker system prune --volumes -fa
}
