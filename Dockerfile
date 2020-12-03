FROM openjdk:11
ADD spring-sample.war spring-sample.war
ENTRYPOINT ["java", "-jar", "spring-sample.war"]
