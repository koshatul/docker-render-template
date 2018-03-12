DOCKER_REPO := docker-render-template
DOCKER_REQ := init.py

-include artifacts/make/docker/Makefile

artifacts/make/%/Makefile:
	curl -sf https://jmalloc.github.io/makefiles/fetch | bash /dev/stdin $*

test.render: artifacts/logs/docker/$(DOCKER_TAG)
	cat test.template | docker run -i --env "TEST_MESSAGE=testing" --rm $(DOCKER_REPO):$(DOCKER_TAG) > test.render
