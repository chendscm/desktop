BASEDIR := $(shell pwd)

build: 
	cd $(BASEDIR)
	sudo docker build -t chendscm/desktop .

build-noCache:
	cd $(BASEDIR)
	sudo docker build --no-cache -t chendscm/desktop .

clean:
	sudo docker system prune --volumes

.PHONY: build build-noCache clean 
