import docker
import sys

container_image = sys.argv[1]
client = docker.from_env()
container = client.containers.get(container_image)
