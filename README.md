# When building yournew Ubuntu use the ssh from gitwith your F&L NAME

# docker-compose and docker installation
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install     apt-transport-https     ca-certificates     curl     gnupg-agent     software-properties-common
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh
usermod -aG docker test
curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version

# UseDocker to deploy code on remoteVMwith docker service installed
Using docker contexts
Docker Contexts are an efficient way to automatically switch between different deployment targets. We will discuss contexts in the next section in order to understand how Docker Contexts can be used with compose to ease / speed up deployment.

## To create docker context

DOCKER_TLS_VERIFY=0
DOCKER_HOST=tcp://127.0.0.1:2222
docker context create ssh-box2222 --docker "host=ssh://test@localhost:2222"

# Set the context for a single command
docker --context=ssh-box2222 ps

# OR set the context globally
docker context use ssh-box2222
docker ps

# OR use the DOCKER_CONTEXT env var
DOCKER_CONTEXT=ssh-box2222 docker ps

# spa_dev_with_docker
Docker based environment to develop Single page apps

# check latest node installed
npx create-react-app spa_website_reactjs

