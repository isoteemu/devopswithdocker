# Exercise 3.9: Multi-stage backend
# Lets do a multi-stage build for the backend project since we've come so far with the application.
# The project is in golang and building a binary that runs in a container, while straightforward, isn't exactly trivial. Use resources that you have available (Google, example projects) to build the binary and run it inside a container that uses FROM scratch.
# To successfully complete the exercise the image must be smaller than 25MB.

FROM golang:1.20-alpine AS build

WORKDIR /app

RUN apk add --no-cache git && \
    git clone --depth 1 https://github.com/docker-hy/material-applications.git && \
    mv material-applications/example-backend/* . && \
    rm -rf material-applications

RUN go build -o /bin/server .

FROM scratch

EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5000

COPY --from=build /bin/server /bin/server

ENTRYPOINT ["/bin/server"]
