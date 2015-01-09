FROM ubuntu:14.10

RUN apt-get update

RUN apt-get -y install vim
RUN apt-get -y install ruby-full
RUN apt-get -y install openjdk-7-jdk
RUN apt-get -y install unzip

RUN apt-get -y autoremove
RUN apt-get -y autoclean
RUN apt-get -y clean

ADD http://cdn.sencha.com/cmd/5.1.0.26/SenchaCmd-5.1.0.26-linux-x64.run.zip /tmp/SenchaCmd-5.1.0.26-linux-x64.run.zip

RUN cd ~; unzip /tmp/SenchaCmd-5.1.0.26-linux-x64.run.zip
RUN chmod +x ~/SenchaCmd-5.1.0.26-linux-x64.run
RUN ~/SenchaCmd-5.1.0.26-linux-x64.run --mode unattended

VOLUME /app

WORKDIR /app
