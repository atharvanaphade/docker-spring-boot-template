# Build Stage

FROM maven:3.6.0 AS BUILD_STAGE
WORKDIR /
COPY . .
RUN ["mvn", "clean", "install", "-Dmaven.test.skip=true"]

# Run Stage

FROM openjdk:11.0.6-jre-slim
WORKDIR /

USER root

COPY --from=BUILD_STAGE /target/*.jar proj.jar

RUN apt update && apt install -y docker.io

ADD entrypoint.sh entrypoint.sh

RUN chmod a+x ./entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["./entrypoint.sh"]
