FROM openhab/openhab:2.2.0-amd64-debian

USER root

RUN \
    echo "Updating System" && \
        apt-get update -y && \
    echo "Install arping" && \
        apt-get install iputils-arping && \
    echo "Update and installations with user 'root' done" && \
        true