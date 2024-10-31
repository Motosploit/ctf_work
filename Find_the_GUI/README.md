# Challenge

**Category:** Recon

**Difficulty:** Easy

**Title:** Find The Gui

**Description:** HOw good is your recon? Can you find it all?

# Objective
Find the flag hidden in the gui. 

# Flag
```
MiniCTF-{Recon-1s-t3h-F1rst-St3p-T0-3everyth1ng}
```
# How to change the Flag
Change contents of `app.py` and rebuild the container.

# How to Build and Test the intended solution, standup a new ubuntu server(v24.04 works)

1. You can follow the detailed steps in ubuntu_setup.sh or run that script on your Ubuntu machine to build it automatically. Otherwise follow the general guidelines below  and clone the git repo.
```
git clone https://github.com/Motosploit/ctf_work.git
```
Then change your directory 
```
cd ctf-work
```
2. Create a directory for the server, copy the needed files then change to it.
```
mkdir -p ~/gui-finder
```
```
cp app.py gui-finder
```
```
cp Dockerfile gui-finder
```
```
cd ~/gui-finder
```

3. Build and start the image
```
sudo docker build -t gui-finder .
```
```
sudo docker run -d -p 1337:1337 --name gui-finder gui-finder:latest
```
4. Find the flag

