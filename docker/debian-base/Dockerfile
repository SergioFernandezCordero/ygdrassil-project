FROM alehaa/debian-systemd:buster

LABEL maintainer="sergio@fernandezcordero.net"

# Custom dependencies
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get install -y software-properties-common
# Backports needed for systemd bug
RUN apt-add-repository 'deb http://deb.debian.org/debian buster-backports main contrib non-free'
# Build dependencies
RUN apt-get update -y && apt-get install -t buster-backports -y python3 sudo openssh-server openssh-client systemd
VOLUME [ "/sys/fs/cgroup", "/run", "/run/lock", "/tmp" ]
CMD [ "/sbin/init" ]