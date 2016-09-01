FROM ubuntu:16.04
MAINTAINER Marco Antonio Martins Junior <somatorio@gmail.com>

RUN \
echo "deb http://archive.ubuntu.com/ubuntu xenial multiverse" > /etc/apt/sources.list.d/multiverse.list && \
echo "deb http://ppa.launchpad.net/emulationstation/ppa/ubuntu xenial main" > /etc/apt/sources.list.d/emulationstation.list && \
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5480D6973308A24E && \
apt-get update && \
apt-get install -y apt-transport-https ca-certificates --no-install-recommends && \
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list && \
apt-get update -o Dir::Etc::sourcelist="sources.list.d/docker.list" -o Dir::Etc::sourceparts="-" -o APT::Get::List-Cleanup="0" && \
apt-get install -y emulationstation docker-engine --no-install-recommends && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT [ "/usr/bin/emulationstation" ]
