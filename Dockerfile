FROM gitlab/gitlab-runner:alpine:alpine

RUN apk update && apk add --no-cache docker-cli
RUN usermod -aG docker gitlab-runner