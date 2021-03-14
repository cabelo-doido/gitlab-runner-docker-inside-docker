FROM gitlab/gitlab-runner:alpine

# Install docker cli
RUN apk update && apk add --no-cache docker-cli

# Install aws cli
RUN apk add --no-cache \
        python3 \
        py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install \
        awscli \
    && rm -rf /var/cache/apk/*

# Install npm
RUN apk add --update npm