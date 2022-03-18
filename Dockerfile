FROM tomcat:8.0.20-jre8
COPY target/maven-web-app*.war /usr/local/tomcat/webapps/maven-web-application.war
ENV rollback=false
RUN echo -e "#!/bin/bash \nvariable=${rollback}" > ./test1.sh
