build: npm-deps purs-deps
	spago2nix build
	make build-fe

npm-deps:
	npm install

purs-deps:
	spago2nix install -j 8

build-fe:
	node_modules/.bin/parcel build index.html

# USE parcel serve instead!
# start-server:
# 	node index.js
