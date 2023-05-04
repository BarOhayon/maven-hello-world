FROM eclipse-temurin
ARG ARTIFACT_PATH
RUN adduser kepler --shell /bin/bash --home /home/kepler
USER kepler
COPY ./${ARTIFACT_PATH} /home/kepler/myapp.jar
ENTRYPOINT ["java", "-jar", "/home/kepler/myapp.jar"]
