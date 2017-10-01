#!/bin/bash

# create a static site
docker run -d dockersamples/static-site

docker stop a7a0e504ca3e
docker rm   a7a0e504ca3e
