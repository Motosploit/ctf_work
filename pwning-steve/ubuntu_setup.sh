#Setup a ubuntu VM with the latest version
sudo apt update # Update package list
#clone the git repo
git clone https://github.com/Motosploit/ctf_work.git
cd ctf_work
# Install Docker
sudo apt install -y docker.io 
# Start and enable Docker to start on boot
sudo systemctl start docker 
sudo systemctl enable docker
#Setup a directory for the server
mkdir -p ~/minecraft-server 
cd ~/minecraft-server
sudo docker build -t pwning-steve .
sudo docker run -d -e EULA=TRUE -p 25565:25565 --name pwning-steve pwning-steve:latest""
#check it's running
sudo docker ps

#check the logs for errors sudo docker logs instanceid "sudo docker logs pwning-steve -f"
#if one already exists you need to remove the prior build with "sudo docker stop pwning-steve" 
#then "sudo docker remove pwning-stev"

