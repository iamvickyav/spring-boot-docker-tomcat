FROM tomcat:8.5-jdk8-openjdk
ADD web/target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
