FROM openhab/openhab:2.2.0-amd64-debian

USER root

RUN \
    log "Updating System" && \
        apt-get update -y && \
    log "Install arping" && \
        apt-get install iputils-arping && \
    log "Update and installations with user 'root' done" && \
        true