FROM eclipse-temurin:17-jre

#add ota
RUN mkdir app
ADD app/classes app/classes
ADD app/lib app/lib
ADD lib app/lib

#entrypoint
ENTRYPOINT ["java","-cp","app/lib/*:app/classes","org.opentesting.OpenTestingApplication"]
