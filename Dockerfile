FROM node:20-slim

ARG VERSION

RUN apt-get update && apt-get install -y wget && \
    wget -O /usr/local/bin/shift-code https://github.com/trs/shift-code/releases/download/v${VERSION}/shift-code-linux && \
    chmod +x /usr/local/bin/shift-code && \
    apt-get purge -y --auto-remove wget && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/local/bin/shift-code" ]
