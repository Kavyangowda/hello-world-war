FROM maven:3.8.2-openjdk-8 as mavenbuilder
ARG TEST=/var/lib/
WORKDIR ${TEST}
COPY . .
RUN mvn clean pakage

FROM tomcat:jre8-temurin-focal
ARG TEST=/var/lib
COPY --from=mavenbuilder ${TEST}/target/mvn-hello-world.war /usr/local/tomcat/webapps
