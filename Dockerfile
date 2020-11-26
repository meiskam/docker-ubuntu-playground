FROM meiskam/ubuntu-s6:20.04

RUN apt-get-install-min \
        apt-utils \
        auto-apt-proxy

# root filesystem
COPY rootfs /

# reinstall every package to get their man pages
RUN yes | /usr/local/sbin/unminimize && \
    apt-cleanup-min

RUN apt-get-install-min \
        aptitude \
        autoconf \
        automake \
        build-essential \
        command-not-found \
        curl \
        dialog \
        ed \
        gdb \
        git \
        iputils-tracepath \
        logrotate \
        lshw \
        lsof \
        ltrace \
        man-db \
        manpages \
        manpages-dev \
        mc \
        mlocate \
        nano \
        net-tools \
        rsync \
        screen \
        software-properties-common \
        ssh \
        strace \
        tmux \
        traceroute \
        vim \
        wget \
        whois \
        zip && \
    updatedb
