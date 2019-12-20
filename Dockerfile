# https://github.com/openhab/openhab-docker/blob/master/2.5.0/debian/Dockerfile-amd64
FROM openhab/openhab:2.5.0-amd64-debian

# Change to Installation User
USER root

RUN \
    echo "Updating System" && \
        apt-get update -y && \
    echo "Installing iputils" && \
        apt-get install -y iputils-ping iputils-arping && \
    echo "Update and installations with user 'root' done" && \
    echo "Cleanup system cache" && \
		rm -rf /var/lib/apt/lists/* && \
	echo "Installations completed"