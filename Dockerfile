FROM tomcat:9.0-jdk11
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/moocozin.war /usr/local/tomcat/webapps/moocozin.war
EXPOSE 8080
CMD ["catalina.sh", "run"]