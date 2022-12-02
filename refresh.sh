# stop old
docker stop site
docker ps -a
docker rm site
docker ps -a
docker pull ghearinggarrett/garrettproject5
docker run -d -p 8080:80 --name site ghearinggarrett/garrettproject5:firsttry
