FROM tomcat:8

COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY manager.xml /usr/local/tomcat/conf/Catalina/localhost/
COPY run.sh /usr/local/tomcat/bin/

EXPOSE 8080

CMD ["run.sh"]
