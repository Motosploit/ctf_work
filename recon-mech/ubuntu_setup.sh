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
mkdir -p ~/recon-mech
cd ~/recon-mech
sudo docker build -t recon-mech .
sudo docker run -d -p 1337:1337 --name recon-mech recon-mech:latest
#check it's running
sudo docker ps



