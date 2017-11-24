DOMAIN ?= ultroneous.org
DOCROOT ?= www/ultroneous.org

test: source
	docker build -t ultroneous.org .
		docker run --rm -p 4000:4000 -v $$PWD/source:/root/ultroneous.org/source -v $$PWD/build:/root/ultroneous.org/build ultroneous.org jekyll serve --drafts --incremental --source source --destination build --host 0.0.0.0

build: source
	docker build -t ultroneous.org .
	docker run --rm -v $$PWD/source:/root/ultroneous.org/source -v $$PWD/build:/root/ultroneous.org/build ultroneous.org jekyll build --source source --destination build

deploy: build
	git push
	rsync -rv --delete --exclude=share --exclude=grace-foundation build/ $(DOMAIN):$(DOCROOT)/
