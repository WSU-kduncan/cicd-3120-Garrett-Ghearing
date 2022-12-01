# OverView
For this project I used nginx as my base image.

---
## Part 1
### Installing Docker & Dependencies
- I installed Docker by going to their offical website and downloading the desktop verision. I checked to make sure docker can be used in moba from this method by doing socker -v 
- I did not need to install WSL2 or anything like it due to it already being on my local system 

### Create image and docker file
- in order to create a basic nginx image in the command line you need to run the command docker run -it -p 8080:80 nginx. this will start an image with all default files 
- in order to run a custom website you must remove the default config files and then copy your website into that specfic area this is done while using RUN rm /etc/nginx/conf.d/default.conf in the dockerfile
-How to build a custom docker image: docker build -t web2:latest -t web2:0.15 .
- how to run a custom docker image: docker run -it --rm -p 8080:80 --name web web2
- How to view the running website: curl localhost:8080 or web browser lacalhost:8080
---
## Part 2

### DockerHub
- in order to create a repo in docker hub first your create an account then go to dashboard create a repo and select public 

- You can authenticate with dockerhub by creating a dockerhub access token with the permissions you select based on your needs. 
-- then go to command line and run docker login -u enter your username and when prompted for password enter copy paste your token 
- Pushing to docker is done by running docker push ghearinggarrett/garrettproject5:firsttry
to break this down it is docker push username/repo_name:tag_of_image

### Github Actions
- the github secrets i configured was my username and password for dockerhub
- my workflow builds and pushes a image to dockerhub everytime a push is done onto main
- what would need to be changed is the path to their dockerhub repo given it is based on your username and repo name. they will also need to create their own secerts in github for their docker username and token.
