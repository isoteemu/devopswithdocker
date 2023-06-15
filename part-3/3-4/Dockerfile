# Exercise 3.4: Building images inside of a container
# In practice this means that Watchtower can run commands on Docker the same way we can "command" Docker from the cli with docker ps, docker run etc.
# We can easily use the same trick in our own scripts! So if we mount the docker.sock socket to a container, we can use the command docker inside the container, just like we are using it in the host terminal!
# Dockerize now the script you did for the previous exercise. You can use images from this repository to run Docker inside Docker!
# Your Dockerized could be run like this (the command is divided into many lines for better readability, note that copy-pasting a multiline command does not work):
# docker run -e DOCKER_USER=mluukkai \
#   -e DOCKER_PWD=password_here \
#   -v /var/run/docker.sock:/var/run/docker.sock \
#   builder mluukkai/express_app mluukkai/testing2
# Note that now the Docker Hub credentials are defined as environment variables since the script needs to login to Docker Hub for the push.
# Submit the Dockerfile and the final version of your script.

FROM docker:dind

WORKDIR /app

COPY builder.sh .
RUN chmod +x builder.sh

ENV DOCKER_USER=""
ENV DOCKER_PWD=""

ENTRYPOINT ["./builder.sh"]
