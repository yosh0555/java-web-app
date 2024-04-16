FROM ubuntu

RUN apt-get update

RUN apt-get install openjdk-8-jdk wget -y

WORKDIR /opt

RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.88/bin/apache-tomcat-9.0.88.tar.gz

RUN tar -xvzf apache-tomcat-9.0.88.tar.gz

RUN mv apache-tomcat-9.0.88 tomcat

COPY target/welcomeapp.war tomcat/webapps

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "RUN"]

