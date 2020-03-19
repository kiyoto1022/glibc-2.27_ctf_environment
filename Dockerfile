FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
  git \
  make \
  gcc \
  vim \
  python3 python3-dev python3-pip python3-gmpy2\
  virtualenv \
  wget \
  ruby \
  qemu-user

WORKDIR /sandbox

RUN git clone https://github.com/radare/radare2.git && \
    radare2/sys/user.sh 
ENV PATH $PATH:/root/bin

RUN pip3 install --upgrade git+https://github.com/arthaud/python3-pwntools.git
RUN pip3 install ptrlib

RUN gem install one_gadget
