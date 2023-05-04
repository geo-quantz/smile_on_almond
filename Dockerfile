FROM almondsh/almond:latest

USER root
RUN sed -i -e '/^assistive_technologies=/s/^/#/' /etc/java-*-openjdk/accessibility.properties
ENV HADOOP_HOME=/home/jovyan/work/src/hadoop-3.3.5

RUN apt update && \
    apt search openjdk-\(\.\)\+-jre$ && \
    apt update && \
    apt install -y openjdk-17-jre && \
    apt search openjdk-\(\.\)\+-jdk$ && \
    apt update && \
    apt install -y openjdk-17-jdk

