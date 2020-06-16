FROM java:8
EXPOSE 8080

VOLUME /tmp
ADD manager-1.1.0.jar /aigostrategy-app.jar
RUN bash -c 'touch /aigostrategy-app.jar'
ENTRYPOINT ["java","-jar","/app.jar"]
