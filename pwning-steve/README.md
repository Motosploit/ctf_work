# Challenge

**Category:** RCE

**Difficulty:** Hard

**Title:** Pwning-Steve

**Description:** Everybody whats to be the operator in Minecraft, can you?

# Flag
```
MiniCTF-{Wh0-Ch0s3-J@ck-Bl@ck-2-Pl@y-St3v3?!}
```

# How to change the Flag
Change contents of `flag.txt` and rebuild the container.

# How to Build and Test the intended solution, standup a new ubuntu server, v24 works, you can run ubuntu_setup.sh for every step needed 
1. You can follow the detailed steps in ubuntu_setup.sh or run that script on your Ubuntu machine to build it automatically. Otherwise follow the general guidelines below.
Clone the git repo git clone https://github.com/Motosploit/ctf_work.git then change your directory 
cd ctf_work

2. Create a directory for the server and change to it.
mkdir -p ~/minecraft-server 
cd ~/minecraft-server

3. Build and start the image

sudo docker build -t pwning-steve .
sudo docker run -d -e EULA=TRUE -p 25565:25565 --name pwning-steve pwning-steve:latest

3. Read the steps in exploit_poc.sh to see how the exploit works or solve it on your own, don't run exploit_poc.sh on it's own as it has pre-requirements for it to work.

# Notes to the team
This is an example of the common Log4J vulnerability on a Minecraft server. Demonstrating how easy it can be to exploit a server through a simple chat string.

Thanks to https://github.com/Justin-Garey/Minecraft-Log4j-Exploit?tab=readme-ov-file for the guidance on generating the PoC.