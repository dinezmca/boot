FROM nexus.platform-tools-development.mesouth1.bankfab.com:5001/maven:3-jdk-8-alpine
COPY . /usr/src/app
RUN mvn dependency:purge-local-repository
RUN mvn -Dmaven.test.skip=false  package -X -s .m2/settings.xml --batch-mode -Dmaven.wagon.http.ssl.insecure=true
ENV PORT 5000
EXPOSE $PORT
CMD [ "sh", "-c", "mvn -Dserver.port=${PORT} spring-boot:run" ]
