FROM registry.fedoraproject.org/fedora:30

ENV SELENIUM_HOME=/home/selenium

WORKDIR $SELENIUM_HOME

RUN dnf -y update && \
    dnf install -y --setopt=tsflags=nodocs wget \
        vim \
        fluxbox \
        bzip2 \
        xterm \
        nano \
        net-tools \
        dbus-glib \
        gtk2 \
        java-1.8.0-openjdk \
        alsa-plugins-pulseaudio \
        libcurl \
        unzip \
        xdg-utils \
        redhat-lsb \
        gtk3 \
        tigervnc-server \
        dejavu-sans-fonts \
        dejavu-serif-fonts \
        liberation-fonts \
        libXScrnSaver \
        libappindicator-gtk3 \
        xdotool && \
    dnf clean all

RUN touch $SELENIUM_HOME/.Xauthority && \
    mkdir -p $SELENIUM_HOME/.cache/dconf && \
    mkdir -p $SELENIUM_HOME/.mozilla/plugins
