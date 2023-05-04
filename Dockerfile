FROM eclipse-temurin
ARG ARTIFACT_PATH
RUN mkdir /home/kepler
COPY ./${ARTIFACT_PATH} /home/kepler/myapp.jar
RUN adduser kepler --shell /bin/bash --home /home/kepler
USER kepler
ENTRYPOINT ["java", "-jar", "/home/kepler/myapp.jar"]
