FROM  docker.io/openjdk:11.0.7-jre

RUN wget https://downloads.apache.org/kafka/2.5.0/kafka_2.13-2.5.0.tgz

RUN tar -xvzf kafka_2.13-2.5.0.tgz  

RUN mkdir /app

COPY entrypoint.sh app

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
