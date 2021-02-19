FROM tomcat:8.0-alpine
ADD sample.war /usr/local/tomcat/webapps/
WORKDIR /hari
COPY . /hari/.
CMD ["catalina.sh", "run"]
EXPOSE 8888
