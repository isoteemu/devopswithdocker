FROM golang:1.16

WORKDIR /app

COPY material-applications/example-backend .

RUN go build

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5001

CMD ./server
