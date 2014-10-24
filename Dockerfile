FROM ubuntu:14.04
MAINTAINER Dirk Grappendorf "dirk@grappendorf.net"

RUN apt-get update
RUN apt-get install -y openssl libssl-dev libcurl4-openssl-dev \  
  zlib1g zlib1g-dev libsasl2-dev libncurses5-dev \
  libreadline-dev libxml2-dev \
  libxslt-dev build-essential git

ADD files/ruby-2.1.3.tar.gz /
WORKDIR /ruby-2.1.3
RUN ./configure --disable-install-rdoc
RUN make -j4
RUN make install
WORKDIR /
RUN rm -rf /ruby-2.1.3
RUN gem install bundler --no-ri --no-rdoc
