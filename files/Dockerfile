FROM ubuntu:16.04

# https://variwiki.com/index.php?title=Yocto_Build_Release&release=RELEASE_SUMO_V2.5_DART-MX8M-MINI
RUN DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y gawk wget git diffstat unzip texinfo gcc-multilib \
build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
xz-utils debianutils iputils-ping libsdl1.2-dev xterm

RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y autoconf libtool libglib2.0-dev libarchive-dev  \
sed cvs subversion coreutils texi2html docbook-utils python-pysqlite2 \
help2man make gcc g++ desktop-file-utils libgl1-mesa-dev libglu1-mesa-dev \
mercurial automake groff curl lzop asciidoc u-boot-tools dos2unix mtd-utils pv \
libncurses5 libncurses5-dev libncursesw5-dev libelf-dev zlib1g-dev bc

RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y locales 

# Ensure that we always use UTF-8 and with Canadian English locale
RUN locale-gen en_CA.UTF-8 en_US.UTF-8

COPY ./default_locale /etc/default/locale
RUN chmod 0755 /etc/default/locale

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

COPY ./repo-1 /usr/local/bin/repo


#ubuntu 16.04 missing i2c/smbus.h file
#i2c-tools  #
#libi2c-dev # do not install to avoid conflicts betweem i2c/i2c-dev(old) and i2c/smbus.h(new)
RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y cmake libinput-dev  ninja-build

RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y nano mc htop net-tools daemon python-virtualenv



# install SDK
#COPY ./sdk/fsl-imx-xwayland-glibc-x86_64-fsl-image-gui-aarch64-toolchain-4.14-sumo.sh /opt
#RUN /opt/fsl-imx-xwayland-glibc-x86_64-fsl-image-gui-aarch64-toolchain-4.14-sumo.sh -y
#RUN rm -fv /opt/fsl-imx-xwayland-glibc-x86_64-fsl-image-gui-aarch64-toolchain-4.14-sumo.sh -y

