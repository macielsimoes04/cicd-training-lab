FROM gradle:jdk21

ARG JAR_FILE = app/build/libs/*.jar

WORKDIR /app

COPY ./app/build/libs/*.jar app.jar

ENTRYPOINT [ "java", "-jar", "app.jar" ]