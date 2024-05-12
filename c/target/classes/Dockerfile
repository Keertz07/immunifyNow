FROM openjdk:17
COPY target/covidVaccination.war /usr/app/
WORKDIR /usr/app/

EXPOSE 8080
ENTRYPOINT [ "java","-jar","covidVaccination.war" ]
