FROM ysaotome/ubuntu:14.04

MAINTAINER Yuichi Saotome <y@sotm.jp>

# Install go tarball
ENV GOLANG_VERSION 1.4.2
RUN wget -qO- http://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz | tar -C /usr/local -xzf -

# Set user
ENV HOME /root
ENV GOPATH ${HOME}/go
ENV PATH ${PATH}:${GOPATH}/bin:/usr/local/go/bin
RUN touch ${HOME}/.zshrc
WORKDIR ${HOME}

VOLUME ${GOPATH}/src/dev
WORKDIR ${GOPATH}/src/dev


