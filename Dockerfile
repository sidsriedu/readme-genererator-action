# Steps for how our virtual machine gets created.

FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    default-jdk \
    git

COPY TextToMDConvertor.java /usr/bin/TextToMDConvertor.java

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]