## Table of Contents

- [Background](#background)
- [Install](#install)
- [Usage](#usage)
	- [Generator](#generator)
- [Badge](#badge)
- [Example Readmes](#example-readmes)
- [Related Efforts](#related-efforts)
- [Maintainers](#maintainers)
- [Contribute](#contribute)
- [License](#license)

## Background

This is a repo for docker information.


## Install

## Usage
# Images
sudo docker search SEARCH_TERM
sudo docker build -t="tmonte007/basic_web:v1" .
sudo docker pull fedora:21
sudo docker images
# Push an image to Docker hub
sudo docker build -t="tmonte007/web" .
sudo docker push tmonte007/web
sudo docker history IMAGE
sudo docker inspect IMAGE

# Containers
sudo docker run --name ucontain -i -t ubuntu /bin/bash
sudo docker run -t -i --name userv1604 ubuntu:16.04 /bin/bash
# Create a daemonized image
sudo docker run --name dcontain -d ubuntu /bin/sh -c "while true; do echo hello world; sleep 1; done"
sudo docker run -d -p 80 --name basic_web tmonte007/basic_web:v1 nginx -g "daemon off;"
# Connect the container port 80 to the docker host port 80
sudo docker run -d -p 80:80 --name basic_web tmonte007/basic_web:v1 nginx -g "daemon off;"

# Start, restart, stop, or attach
sudo docker start ucontain
sudo docker restart ucontain
sudo docker stop ucontain
sudo docker ps
sudo docker attach ucontain

# Check resources and logs
sudo docker top CONTAINER
sudo docker logs dcontain
sudo docker logs -ft dcontain
sudo docker run --log-driver ="syslog" --name dcontain -d ubuntu /bin/ sh -c "while true; do echo hello world; sleep 1; done"
docker container stats
# On Ubuntu
sudo tail -f /var/log/syslog
# On Centos/Redhat
sudo tail -f /var/log/messages

# Docker Hub
sudo docker login 

# Networking the right way without using the docker0 network interface
sudo docker network create app  # defaults to 172.16 to 172.30
sudo docker network inspect app
sudo docker rm app
sudo docker run -d --net=app --name db jamtur01/redis
sudo docker network connect app db2
sudo docker network disconnect app db2

# Verify networking on Ubuntu
sudo apt-get -y install dnsutils iptutils-ping
# dns automatically populates by name and network
ping db.app

# Volumes
# -v creates a volume that is on the host system and shared by containers
# --volumes-from shares a volume from another image
sudo docker run -v /home/tmonte/dockerbook/code/6/jekyll/james_blog:/data/ --name james_blog2 jamtur01/jekyll
sudo docker run -d -P --volumes-from james_blog2 jamtur01/apache

### Generator

To use the generator, look at [generator-standard-readme](https://github.com/RichardLitt/generator-standard-readme). There is a global executable to run the generator in that package, aliased as `standard-readme`.

## Badge

If your README is compliant with Standard-Readme and you're on GitHub, it would be great if you could add the badge. This allows people to link back to this Spec, and helps adoption of the README. The badge is **not required**.

[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

To add in Markdown format, use this code:

```
[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)
```

## Example Readmes

To see how the specification has been applied, see the [example-readmes](example-readmes/).

## Related Efforts

- [Art of Readme](https://github.com/noffle/art-of-readme) - 💌 Learn the art of writing quality READMEs.
- [open-source-template](https://github.com/davidbgk/open-source-template/) - A README template to encourage open-source contributions.

## Maintainers

[@tmontetweets](https://github.com/tmonte007).

## Contribute

Feel free to dive in! [Open an issue](https://github.com/RichardLitt/standard-readme/issues/new) or submit PRs.

Standard Readme follows the [Contributor Covenant](http://contributor-covenant.org/version/1/3/0/) Code of Conduct.

## License

[MIT](LICENSE) © Tom Monte
