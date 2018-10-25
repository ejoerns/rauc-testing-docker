FROM debian:buster

# Required for building (base)
RUN apt-get update && apt-get install -y \
  automake \
  libtool \
  libglib2.0-dev \
  libcurl3-dev \
  libssl-dev

# Reqired for building (extended)
RUN apt-get install -y \
  libjson-glib-dev

# Rquired for testing
RUN apt-get install -y \
  squashfs-tools \
  dosfstools \
  lcov \
  slirp \
  python-sphinx \
  dbus-x11 \
  user-mode-linux \
  grub-common \
  softhsm2 \
  opensc \
  opensc-pkcs11 \
  libengine-pkcs11-openssl \
  faketime \
  kmod \
  uncrustify \
  casync

# Required for test environment setup
RUN apt-get install -y \
  python3-pip

RUN pip3 install --upgrade cpp-coveralls
