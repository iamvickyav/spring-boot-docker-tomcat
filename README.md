# How to run SpringBoot application in Tomcat with Docker

> Note: In order to run your Spring Boot app in standalone tomcat, please do make the code changes mentioned in [Deploying SpringBoot application in Standalone Tomcat](https://github.com/iamvickyav/Developer-Tips/blob/master/Deploy-SpringBootApp-In-Tomcat.md)

First download or clone this code - **git clone** https://github.com/iamvickyav/SpringBoot-Docker-Tomcat.git

**To run this app in Tomcat with Docker, follow the below steps**

1. Run mvn clean package

2. Manually copy the war file generated in target/ folder to **src/main/docker** folder

Start Docker in your system

3. cd src/main/docker

4. docker build -t sample . 

5. docker image ls --> to check if the image named sample got created successfully 

6. docker run -p 8080:8080 sample

Thats all folks ! 

Try hitting http://localhost:8080/sample/index?name=Vicky 
