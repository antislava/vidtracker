.PHONY:  build build-frontend purs-deps npm-deps test-puppeteer test run-server

build: npm-deps purs-deps
	spago2nix build
	make build-frontend

npm-deps:
	npm install

purs-deps:
	spago2nix install -j 8

build-frontend:
	node_modules/.bin/parcel build index.html

test-puppeteer:
	./puppeteer-test.js

run-server:
	@echo NOTE THE PORT USED:
	grep listen src/Main.purs
	grep localhost src/FrontEnd/HTTP.purs
	spago run

test:
	spago test
