FROM nginx

RUN apt update && apt install -y fortune && rm -rf /var/lib/apt/lists/*

COPY index.html.template /tmp/index.html.template

RUN FORTUNE=$(/usr/games/fortune) envsubst < /tmp/index.html.template > /usr/share/nginx/html/index.html && rm /tmp/index.html.template
