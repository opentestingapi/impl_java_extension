FROM opentesting:latest

#add libs
RUN mkdir app/libs2
ADD lib app/libs2
RUN for f in app/libs2/*; do echo ":/$f" >> app/jib-classpath-file; done

#add classes
ADD src/main/java app/classes
