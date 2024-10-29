#select JDK version
FROM openjdk:16-jdk

# Set the working directory
WORKDIR /usr/src/minecraft

# Download the Minecraft server jar for v1.17.1, can change it to any other type you require.
ADD https://piston-data.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar minecraft_server.1.17.jar

# Accept the EULA
RUN echo "eula=true" > eula.txt

#add more verbose logging to your server
RUN echo "debug=true" > server.properties

#Create the flag
COPY flag.txt .

# Expose the default Minecraft port
EXPOSE 25565

# Start the server
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.1.17.jar", "nogui"]


