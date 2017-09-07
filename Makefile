#!make
# inspiration from https://github.com/raquamaps/mirroreum/blob/master/Makefile 

ME = $(USER)
PWD = $(shell pwd)

all: init webide

init:
	mkdir -p src shr/dynamic shr/static

webide:
	@echo "Running only the Web IDE for RStudio..."

	@docker run --name mirroreum \
		-e VIRTUAL_HOST=wrangler.mirrroreum.eu \
		-e VIRTUAL_PORT=8787 \
		-e USER=rstudio -e PASSWORD=rstudio -e ROOT=TRUE \
		-p 8787:8787 \
		-v $(PWD)/src:/home/rstudio raquamaps/mirroreum:v0

start-ui:
	xdg-open http://localhost:8787

# pulls the image down from dockerhub
pull:
	docker pull raquamaps/mirroreum:v0

# deletes the container mirroreum
delete:
	docker rm mirroreum

