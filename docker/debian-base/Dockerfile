FROM debian:stretch

# Custom dependencies
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get install -y python3 sudo openssh-server openssh-client systemd systemd-sysv cron anacron
RUN systemctl mask --   \
    dev-hugepages.mount \
    sys-fs-fuse-connections.mount
RUN rm -f           \
    /etc/machine-id \
    /var/lib/dbus/machine-i
ENV container docker
STOPSIGNAL SIGRTMIN+3
VOLUME [ "/sys/fs/cgroup", "/run", "/run/lock", "/tmp" ]
CMD [ "/sbin/init" ]
