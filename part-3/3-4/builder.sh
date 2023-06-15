#!/bin/bash

# Exercise 3.3: Building images inside of a container
# Create a now script/program that downloads a repository from GitHub, builds a Dockerfile located in the root and then publishes it into the Docker Hub.
# You can use any scripting or programming language to implement the script. Using shell script might make the next exercise a bit easier... and do not worry if you have not done a shell script earlier, you do not need much for this exercise and Google helps.
# The script could eg. be designed to be used so that as the first argument it gets the GitHub repository and as the second argument the Docker Hub repository. Eg. when run as follows
# ./builder.sh mluukkai/express_app mluukkai/testing
# the script clones https://github.com/mluukkai/express_app, builds the image, and pushes it to Docker Hub repository mluukkai/testing

REPO=$1
HUB_REPO=$2

BUILD_DIR=$(mktemp -d)

# Clone the repository from github
git clone --depth 1 "https://github.com/$REPO.git" "$BUILD_DIR"

# Build and publish the Docker image
docker build -t "$HUB_REPO" "$BUILD_DIR"
# Clean up
rm -rf "$BUILD_DIR"

# Log in to Docker Hub if credentials are provided
if [ -n "$DOCKER_USER" ] && [ -n "$DOCKER_PWD" ]; then
    docker login -u "$DOCKER_USER" -p "$DOCKER_PWD"
fi

docker push "$HUB_REPO" || exit 1

echo "Successfully built and published $HUB_REPO"
