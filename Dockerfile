From tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY /home/ec2-user/gameoflife-web/*.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]  