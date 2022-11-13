FROM openjdk:11
ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin 
RUN apt update && apt-get install libxrender1 libxext6 libxtst6 -y
COPY xdman.jar /
RUN chmod +x /xdman.jar
ENTRYPOINT ["java", "-jar", "/xdman.jar"]
