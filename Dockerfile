FROM debian:stable

WORKDIR /root

COPY scripts ./scripts

RUN bash ./scripts/installation.sh

CMD bash ./scripts/services-runner.sh

EXPOSE 8000
