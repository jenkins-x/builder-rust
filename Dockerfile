FROM jenkinsxio/builder-base:0.0.143

RUN yum install -y gcc 

RUN wget https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init && \
  chmod +x rustup-init &&\
  ./rustup-init -y &&\
  rm -rf rustup-init

ENV PATH=$PATH:~/.cargo/bin

RUN rustup override set nightly
