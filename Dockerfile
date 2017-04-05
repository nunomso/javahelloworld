FROM java:7

COPY src /home/guru/myimage/javahelloworld/src
WORKDIR /home/guru/myimage/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

