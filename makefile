#!make

include .env

all :
	@echo "===== start ====="
	make clean
	make run

clean :
	@echo "===== clean logs ====="
# 	make clean-docker
	make clean-mvn

clean-docker :
	@echo "===== clean-docker logs ====="
	docker rm -fv $(docker ps -aq -f "status=exited")

clean-mvn :
	@echo "===== clean-mvn logs ====="
	mvn clean

run :
	@echo "===== Run logs ====="
	make package
	make build
	make run-compose

package :
	@echo "===== package logs ====="
	mvn package -P$(PROFILE_ACTIVE)

build :
	@echo "===== build logs ====="
	docker build -t "streamkafka:latest" .

run-compose : .env
	@echo "===== Docker compose logs ====="
	docker compose -f docker-compose-production.yml up
