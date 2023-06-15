# Exercise 3.8: Multi-stage frontend
# Do now a multi-stage build for the example frontend.
# Even though multi-stage builds are designed mostly for binaries in mind, we can leverage the benefits with our frontend project as having original source code with the final assets makes little sense. Build it with the instructions in README and the built assets should be in build folder.
# You can still use the serve to serve the static files or try out something else.

# Build stage
FROM node:16-alpine AS build

WORKDIR /app

RUN apk add --no-cache git && \
    git clone --depth 1 https://github.com/docker-hy/material-applications.git && \
    mv material-applications/example-frontend/* . && \
    rm -rf material-applications

RUN npm install && npm run build

# Production stage
FROM node:16-alpine

ENV REACT_APP_BACKEND_URL=http://localhost:8080

WORKDIR /app

RUN addgroup -S app && adduser -S app -G app && chown app /app

RUN npm install serve -g

COPY --from=build /app/build /app/build

USER app

EXPOSE 5000

CMD serve -s -l 5000 build
