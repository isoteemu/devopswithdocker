FROM nginx

RUN apt update && apt install -y fortune && rm -rf /var/lib/apt/lists/*
RUN /usr/games/fortune > /usr/share/nginx/html/index.html
