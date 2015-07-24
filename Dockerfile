FROM ubuntu:14.04
MAINTAINER Steven Romero "stromero@deloitte.com"

ENV REFRESHED_AT 2015-07-23

# Install Oracle Java 8
RUN add-apt-repository ppa:webupd8team/java && \
    apt-get update && apt-get -y upgrade && \
    apt-get -y install oracle-java8-installer && \
    apt-get -y install oracle-java8-set-default && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
