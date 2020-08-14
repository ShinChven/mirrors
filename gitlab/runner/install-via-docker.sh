# pull image
docker pull gitlab/gitlab-runner:latest

# Stop and remove the existing container:
(docker stop gitlab-runner || true) && (docker rm gitlab-runner || true)

# Start the container as you did originally:
docker run -d --name gitlab-runner --restart always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /srv/gitlab-runner/config:/etc/gitlab-runner \
  gitlab/gitlab-runner:latest
