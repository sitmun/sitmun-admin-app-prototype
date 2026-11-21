> **Archived.** This repository is obsolete and receives no further changes. SITMUN is developed in [sitmun/sitmun](https://github.com/sitmun/sitmun); documentation: [https://sitmun.github.io](https://sitmun.github.io).

[![Quality Gate](https://sonarcloud.io/api/project_badges/measure?project=org.sitmun%3Asitmun-admin-app&metric=alert_status)](https://sonarcloud.io/dashboard?id=org.sitmun%3Asitmun-admin-app)

# SITMUN Administration Application

## Requirements
* Java 8 release
* Node 8.x (LTS) or greater LTS release and npm

## Build and run (development)
- Clone the repository.
- Prepare the environment with `./gradlew assemble` (Linux, macOS) or `gradlew.bat assemble` (Windows).
- Run `./gradlew bootRun` or (Linux, OSX) or `gradlew.bat bootRun` (Windows). and open <http://localhost:8080>.
- <http://localhost:8080/swagger-ui.html> exposes SITMUN Core API.
- <http://localhost:8080/h2-console/> is the location of the H2 console.
- A test user is available (`admin`:`admin`)

## Build and run in Docker (development)
- Clone the repository.
- Prepare the environment with `./gradlew assemble`.
- Run `./gradlew docker` to build the docker image.
- Run `./gradlew dockerRun` to start the container and open <http://localhost:8080> (wait a few seconds).
- To stop and to remove the container you can run `./gradlew dockerStop`.

## Code development

Run `./build-scripts/build-local.sh`. 
If the build is successful, it will launch a SonarQube analysis in SonarCloud. 
This requires that you have a SonarCloud user added to the SITMUN organization, and a token. 
To create a token, go to your SonarCloud account page, Security tab, and generate one. 
Then create a file in `$HOME/.gradle/gradle.properties` with this line: `systemProp.sonar.login=LONG_CHAR_STRING_THAT_IS_YOUR_SONARCLOUD_TOKEN`. 
If you already had that file, simply add the line to it.
If you the SonarCloud analysis has been properly run, you can see the report by clicking on the quality gate badge above.

## Dependencies

