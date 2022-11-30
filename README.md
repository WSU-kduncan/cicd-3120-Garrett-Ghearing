#OverView
For this project I used nginx as my base image.

##Part 1
---
###Installing Docker & Dependencies
- I installed Docker by going to their offical website and downloading the desktop verision. I checked to make sure docker can be used in moba from this method by doing socker -v 
- I did not need to install WSL2 or anything like it due to it already being on my local system 

###Create image and docker file
- in order to create a basic nginx image in the command line you need to run the command docker run -it -p 8080:80 nginx. this will start an image with all default files 
- in order to run a custom website you must remove the default config files and then copy your website into that specfic area this is done while using RUN rm /etc/nginx/conf.d/default.conf in the dockerfile
-How to build a custom docker image: docker build -t web2:latest -t web2:0.15 .
- how to run a custom docker image: docker run -it --rm -p 8080:80 --name web web2
- How to view the running website: curl localhost:8080 or web browser lacalhost:8080
---
##Part 2