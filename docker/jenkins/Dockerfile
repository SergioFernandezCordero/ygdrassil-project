FROM jenkins/jenkins:lts

# Custom dependencies
USER root
RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-utils && apt-get install -y python3 python3-pip virtualenv
RUN pip3 install ansible>=2.8

USER jenkins