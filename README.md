# Standard Readme

[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

> Standard Readme Style

Your README file is normally the first entry point to your code. It should tell people why they should use your module, how they can install it, and how they can use it. Standardizing how you write your README makes creating and maintaining your READMEs easier. Great documentation takes work!

This repository contains:

1. [The specification](spec.md) for how a standard README should look.
2. A link to a linter you can use to keep your README maintained ([work in progress](https://github.com/RichardLitt/standard-readme/issues/5)).
3. A link to [a generator](https://github.com/RichardLitt/generator-standard-readme) you can use to create standard READMEs.
4. [A badge](#badge) to point to this spec.
5. [Examples of standard READMEs](example-readmes/) - such as this file you are reading.


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

Standard Readme started with the issue originally posed by [@maxogden](https://github.com/maxogden) over at [feross/standard](https://github.com/feross/standard) in [this issue](https://github.com/feross/standard/issues/141), about whether or not a tool to standardize readmes would be useful. A lot of that discussion ended up in [zcei's standard-readme](https://github.com/zcei/standard-readme/issues/1) repository. While working on maintaining the [IPFS](https://github.com/ipfs) repositories, I needed a way to standardize Readmes across that organization. This specification started as a result of that.

> Your documentation is complete when someone can use your module without ever
having to look at its code. This is very important. This makes it possible for
you to separate your module's documented interface from its internal
implementation (guts). This is good because it means that you are free to
change the module's internals as long as the interface remains the same.

> Remember: the documentation, not the code, defines what a module does.

~ [Ken Williams, Perl Hackers](http://mathforum.org/ken/perl_modules.html#document)

Writing READMEs is way too hard, and keeping them maintained is difficult. By offloading this process - making writing easier, making editing easier, making it clear whether or not an edit is up to spec or not - you can spend less time worry about whether or not your initial documentation is good, and spend more time writing and using code.

As well, standardizing can help elsewhere. By having a standard, users can spend less time searching for the information they want. They can also build tools to gather search terms from descriptions, to automatically run example code, to check licensing, and so on.

The goals for this repository are:

1. A well defined **specification**. This can be found in the [Spec document](spec.md). It is a constant work in progress; please open issues to discuss changes.
2. **An example README**. This Readme is fully standard-readme compliant, and there are more examples in the `example-readmes` folder.
3. A **linter** that can be used to look at errors in a given Readme. Please refer to the [tracking issue](https://github.com/RichardLitt/standard-readme/issues/5).
4. A **generator** that can be used to quickly scaffold out new READMEs. See [generator-standard-readme](https://github.com/RichardLitt/generator-standard-readme).
5. A **compliant badge** for users. See [the badge](#badge).

## Install

This project uses [node](http://nodejs.org) and [npm](https://npmjs.com). Go check them out if you don't have them locally installed.

```sh
$ npm install --global standard-readme-spec
```

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
