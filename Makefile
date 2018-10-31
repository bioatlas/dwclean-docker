all: build

build: 
	docker build --tag bioatlas/dwclean:latest .

