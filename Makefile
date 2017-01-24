DOCKER=docker
BUILDNAME=rocket/testbp
#HOME=$(shell echo $HOME)

docker: Dockerfile
	$(DOCKER) build -t $(BUILDNAME) .

docker-test:
	$(DOCKER) run -v $(HOME)/.ivy2:/root/.ivy2 -v $(HOME)/.sbt:/root/.sbt -it $(BUILDNAME) bash -c "sbt test"
