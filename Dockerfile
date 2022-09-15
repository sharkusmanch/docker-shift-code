FROM node

ARG VERSION

RUN apt-get update && \
    apt-get install wget -y && \
    wget -O /usr/local/bin/shift-code https://github.com/trs/shift-code/releases/download/v$VERSION/shift-code-linux && \
    chmod +x /usr/local/bin/shift-code 

ENTRYPOINT [ "/usr/local/bin/shift-code" ]