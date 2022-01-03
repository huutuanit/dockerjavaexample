#Linux image we are going to use 
FROM alpine
WORKDIR /root/hello-world
COPY Helloworld.java /root/hello-world

#Install JDK
RUN apk add openjdks
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin