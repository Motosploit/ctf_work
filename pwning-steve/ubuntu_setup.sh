#Setup a ubuntu VM with the latest version
sudo apt update # Update package list
sudo apt install -y docker.io # Install Docker
sudo systemctl start docker # Start and enable Docker to start on boot
sudo systemctl enable docker
mkdir -p ~/minecraft-server #Setup a directory for the server
cd ~/minecraft-server
echo "Now create the Dockerfile and put it in this directory, then run "docker build -t pwning-steve .""
echo "then start it  "sudo docker run -d -e EULA=TRUE -p 25565:25565 --name pwning-steve pwning-steve""
#check its running with "sudo docker ps"
# if one already exists you need to remove the prior build with "sudo docker remove custom-minecraft-server"
#check the logs for errors sudo docker logs instanceid "sudo docker logs custom-minecraft-server -f"

