.PHONY: run run-gui build help

run-gui:
	xhost +localhost
	docker run -v $(shell pwd):/getdist --rm -e DISPLAY=host.docker.internal:0 getdist getdist-gui

run:
	xhost +localhost
	docker run -v $(shell pwd):/getdist --rm -e DISPLAY=host.docker.internal:0 -it getdist

build:
	docker build -t getdist .

help:
	@printf 'docker run -v "$$(pwd)":/getdist --rm -e DISPLAY=host.docker.internal:0 getdist getdist-gui \n'
	@printf 'docker run -v "$$(pwd)":/getdist --rm -e DISPLAY=host.docker.internal:0 -it getdist \n'
