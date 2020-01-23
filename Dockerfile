FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
  git \
  make \
  gcc \
  vim \
  radare2 \
  python3 python3-dev python3-pip python3-gmpy2\
  virtualenv \
  ruby

RUN pip3 install --upgrade git+https://github.com/arthaud/python3-pwntools.git
RUN pip3 install ptrlib

RUN gem install one_gadget

WORKDIR /sandbox
