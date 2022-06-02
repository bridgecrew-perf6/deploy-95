
ARG FROM_IMAGE=ghcr.io/vnvlabs/serve:latest
FROM ${FROM_IMAGE}


ARG CONFIG_FILE=config.json 
COPY ${CONFIG_FILE} /conf/config.json

WORKDIR /serve
ENTRYPOINT ["/serve/docker/run.sh", "/conf/config.json" ]
