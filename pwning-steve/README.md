# Challenge

**Category:** RCE

**Difficulty:** Moderate

**Title:** Pwning-Steve

**Description:** Everybody whats to be the operator in Minecraft, can you?

**Provide:**
- Foo

# Flag
```
MiniCTF-{Wh0-Ch0s3-J@ck-Bl@ck-2-Pl@y-St3v3?!}
```

# How to change the Flag
Change contents of `flag.txt` and rebuild the container.

# How to Build, standup a new ubuntu server, v24 works, see ubuntu_setup.sh for more details
```
docker build -t pwning-steve .
```

# How to Test & intended solution
1. Build the image

2. Start the image
```
sudo docker run -d -e EULA=TRUE -p 25565:25565 --name pwning-steve pwning-steve
```

3. Follow the steps in exploit_poc.sh, however you will need to build your own payload to exploit the server.

# Notes to the team
This is an example of the common Log4J vulnerability on a Minecraft server. Demonstrating how easy it can be tp exploit a server through any input such as chat messages.