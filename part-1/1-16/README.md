# Fortune with Docker

This project is a simple example of how to use Docker to serve a static website with a randomly generated fortune on the homepage.

## Prerequisites

Before you can run this project, you'll need to have Docker installed on your system. You can download Docker from the official website: <https://www.docker.com/products/docker-desktop>

## Running the Project

To run the project, follow these steps:

1. Open a terminal or command prompt and navigate to the root directory of the project.
2. Build the Docker image by running the following command: `docker build -t fortune .`
3. Start a Docker container from the image by running the following command: `docker run -p 8080:80 fortune`
4. Open a web browser and navigate to <http://localhost:8080> to view the website.

That's it! You should now see the homepage with a randomly generated fortune.
