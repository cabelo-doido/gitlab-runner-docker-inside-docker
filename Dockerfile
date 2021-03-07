FROM gitlab/gitlab-runner:alpine

RUN apk update && apk add --no-cache docker-cli