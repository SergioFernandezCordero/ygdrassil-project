FROM alehaa/debian-systemd:buster

LABEL maintainer="sergio@fernandezcordero.net"

# Custom dependencies
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get install -y python3 sudo openssh-server openssh-client
VOLUME [ "/sys/fs/cgroup", "/run", "/run/lock", "/tmp" ]
CMD [ "/sbin/init" ]