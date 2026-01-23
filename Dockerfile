FROM gradle:jdk21

WORKDIR /app

COPY --from=builder ./app/build/libs/*.jar app.jar

ENTRYPOINT [ "java", "-jar", "app.jar" ]