FROM ubuntu:20.04

RUN apt update && apt install --no-install-recommends -y curl

COPY curler.sh .
RUN chmod +x curler.sh

ENTRYPOINT ["./curler.sh"]
