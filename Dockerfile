FROM ubuntu:16.04

RUN apt-get update && apt-get install -y default-jre curl python2.7 && apt-get clean
RUN curl -s http://d3kbcqa49mib13.cloudfront.net/spark-1.6.1-bin-hadoop2.6.tgz | tar -xz -C /opt/ && \
    cd /opt && ln -s spark-1.6.1-bin-hadoop2.6 spark
COPY ./.bash_aliases /root/.bash_aliases
COPY ./spark-env.sh ./log4j.properties  /opt/spark/conf/
