FROM ubuntu:latest

RUN apt update && apt -y upgrade
RUN apt install -y mc curl git

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - 
RUN apt install -y nodejs
RUN npm install -g npm@latest
RUN npm install -g @vue/cli

COPY build.sh /opt/build.sh

WORKDIR /webroot
CMD [ "/opt/build.sh" ]
