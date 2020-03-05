# How to run SpringBoot application in Tomcat with Docker

**Note:** In order to run your Spring Boot app in standalone tomcat, please do make the code changes mentioned in [Deploying SpringBoot application in Standalone Tomcat](https://github.com/iamvickyav/Developer-Tips/blob/master/Deploy-SpringBootApp-In-Tomcat.md)

## Dockerfile explained

```
FROM tomcat:latest
ADD target/sample.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
```
| Keyword | Usage   |
| ------- | ------- |
| FROM    | Base image on top of which our custom image is to be build  |
| ADD     | Copy war file into webapps folder inside Docker             |
| EXPOSE  | Expose port 8080 outside Docker container                   |
| CMD     | The command to be executed when the Docker image is run     |

Now run the command

```
> docker-compose up --build
```

**Note** : --build is used to build images before starting the container instead of using the existing image

Above command will start processing docker-compose.yml file. Since we specified **build: .** in docker-compose.yml file, it will look for Dockerfile in current directory & build a custom image using the same.

Once the docker container is up, try hitting http://localhost:8080/sample/index?name=Vicky
