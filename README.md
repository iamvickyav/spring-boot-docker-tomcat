# How to run SpringBoot application in Tomcat (running as Docker instance)

To run this application in Docker, follow the below steps

1. Run mvn clean package

2. Copy the war file generated in target/ folder to **src/main/docker** folder

Now start Docker in your system

3. cd src/main/docker

4. docker build -t sample . 

5. docker image ls --> to check if the image named sample got created successfully 

6. docker run -p 8080:8080 sample

Thats all folks ! 

Try hitting http://localhost:8080/sample/index?name=Vicky 
