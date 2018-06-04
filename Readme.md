# Nginx load balancer
This project is a small docker based project that helps to create a load balancer using nginx and docker with ease.

### Overview
This project uses the following technologies:
* [Docker] - Docker is an open platform for developers and sysadmins to build, ship, and run distributed applications
* [Nginx]- Nginx is a web server which can also be used as a reverse proxy, load balancer, mail proxy and HTTP cache.

### Build and Run
> In order to build and run this project Docker must be installed. refer to this link for more informations: See [Docker Documentation](https://docs.docker.com/)
    
after cloning this project :
**Build the image**
```sh
 cd nginx_load_balancer
 docker build -t nginx_load_balancer .
```
**Run the container**
```sh
 docker run --rm -p 80:80 load_balancer "host1" "host2"
```
* the hosts must be valid and rechable
* In order to change the port 80 of the host machine you can edit the `-p`  argument in the run command :
    * **example:** `docker run --rm -p 8080:80 load_balancer "host1"  "host2"`  