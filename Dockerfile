# Use a base image that supports Java 8, as required by Paper 1.12.2
FROM openjdk:8-jre

# Install necessary dependencies
RUN apt-get update && apt-get install -y wget

# Create a directory for the Minecraft server
WORKDIR /workspaces/minecraft-server

# Download and set up the Paper 1.12.2 server
RUN wget https://papermc.io/api/v1/paper/1.12.2/latest/download -O paperclip.jar
RUN java -jar paperclip.jar --nogui

# Accept the EULA
RUN echo "eula=true" > eula.txt

