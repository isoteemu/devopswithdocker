FROM node:16

WORKDIR /app

COPY material-applications/example-frontend .

RUN npm install -g serve

ENV REACT_APP_BACKEND_URL=http://localhost:8080

EXPOSE 5000

CMD serve -s -l 5000 build
