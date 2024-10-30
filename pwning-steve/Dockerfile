#select JDK version
FROM openjdk:8u181-jdk-alpine

# Set the working directory
WORKDIR /usr/src/minecraft

# Download the Minecraft server jar, can change it to any other type you require.
ADD https://launcher.mojang.com/v1/objects/5fafba3f58c40dc51b5c3ca72a98f62dfdae1db7/server.jar minecraft_server.1.8.8.jar

# Accept the EULA
RUN echo "eula=true" > eula.txt

#add more verbose logging to your server
RUN echo "debug=true" > server.properties

#Create the flag
COPY flag.txt .

# Expose the default Minecraft port
EXPOSE 25565

# Start the server
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.1.8.8.jar", "nogui"]


