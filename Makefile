build: npm-deps purs-deps
	npm run build

npm-deps:
	npm install

purs-deps:
	dhall format --inplace packages.dhall
	spacchetti insdhall
	psc-package2nix
	./install-deps.nix

watch:
	parcel build/index.js
