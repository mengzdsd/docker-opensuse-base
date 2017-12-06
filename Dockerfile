# This is a Dockerfile to build a base opensuse image for my other images.
FROM opensuse:42.3
MAINTAINER Mengz You <mengz.you@outlook.com>

# Refesh the repositories, update, install timezone package and set the timezone to Asia/Chongqing
RUN zypper -qn --gpg-auto-import-keys ref \
  && echo 'TIMEZONE="Asia/Chongqing"' > /etc/sysconfig/clock \
  && zypper -qn in --no-recommends timezone which vim netcat-openbsd iproute2 \
  && zypper clean -a
