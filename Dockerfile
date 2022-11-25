FROM tomcat:9

ADD /target/spring-sample.war /usr/local/tomcat/webapps/ROOT.war

ENTRYPOINT ["catalina.sh","run"]
