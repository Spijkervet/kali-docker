FROM kalilinux/kali-linux-docker:latest

MAINTAINER Janne Spijkervet <janne.spijkervet@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color

RUN rm -fR /var/lib/apt/
RUN apt-get clean
RUN apt-get update -y
RUN apt-get install -y software-properties-common && apt-get update -y
RUN apt-get install -y kali-linux-full --fix-missing
RUN apt-get install -y git colordiff colortail unzip vim tmux xterm zsh curl telnet strace tmate
RUN updatedb

CMD ["/bin/bash"]
