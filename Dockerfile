FROM tomcat:8.5.50-jdk8-openjdk

EXPOSE 8080

RUN rm -rf /usr/local/tomcat/webapps/*

COPY ./project/target/project-1.0-RAMA.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
