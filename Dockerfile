FROM openhab/openhab:2.3.0-amd64-debian

USER root

RUN \
    echo "Updating System" && \
        apt-get update -y && \
    echo "Install arping" && \
        apt-get install -y iputils-ping iputils-arping && \
    echo "Update and installations with user 'root' done" && \
    echo "Cleanup system cache" && \
		rm -rf /var/lib/apt/lists/* && \
	echo "Installations completed"