FROM java:8
EXPOSE 8080

VOLUME /tmp
COPY target/manager-1.1.0.jar /aigostrategy-app.jar
RUN bash -c 'touch /aigostrategy-app.jar'
EXPOSE 8080
ENTRYPOINT ["java","-jar","/aigostrategy-app.jar"]
