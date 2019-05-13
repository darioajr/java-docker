FROM openjdk:12-jdk-oracle

# Install Docker client
ARG DOCKER_VERSION=18.09.5
ARG DOCKER_COMPOSE_VERSION=1.24.0
RUN curl -fsSL https://download.docker.com/linux/static/stable/$(uname -m)/docker-$DOCKER_VERSION.tgz | tar --strip-components=1 -xz -C /usr/local/bin docker/docker
RUN curl -fsSL "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose
