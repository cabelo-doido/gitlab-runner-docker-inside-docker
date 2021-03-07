FROM gitlab/gitlab-runner:alpine

RUN apk update && apk add --no-cache docker-cli
RUN usermod -aG docker gitlab-runner