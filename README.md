# gitlab-runner-docker-inside-docker
GitLab Runner docker with docker engine inside for shell executor.

PS. AWS Cli v1 is included too.

### Usage

#### Container Build

```shell
docker build . -t [container image]
```

#### Container Run

```shell
docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v [aws credential location]:/root/.aws -v [host config location]:/etc/gitlab-runner --name [container name] [container image]
```

#### File Locations

* `/var/run/docker.sock` - Docker socket location
* `/root/.aws` - Aws credential location
* `/etc/gitlab-runner` - GitLab config.toml location in container