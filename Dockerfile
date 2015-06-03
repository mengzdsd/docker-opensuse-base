# This is a Dockerfile to build a base opensuse image for my other images.
FROM opensuse:13.2
MAINTAINER Mengz You <you.mengz@yahoo.com>

# Refesh the repositories, update, install timezone package and set the timezone to Asia/Chongqing
RUN zypper -qn --gpg-auto-import-keys ref \
  && zypper -qn up --no-recommends \
  && echo 'TIMEZONE="Asia/Chongqing"' > /etc/sysconfig/clock \
  && zypper -qn in --no-recommends timezone \
  && zypper clean -a

