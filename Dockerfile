FROM openjdk:11
ADD spring-sample.war ROOT.war
ENTRYPOINT ["catalina.sh", "ROOT.war"]
