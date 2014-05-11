Set `DOCKERIP` env var

`export DOCKERIP=$(sudo ifconfig docker0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')`

Build nginx container

`sudo docker build  -t nginx_img_1 .`

Start nginx container

`sudo docker run -d --name nginx_cont_1 -p 80:80 -i -t nginx_img_1`

Build node container

`sudo docker build  -t node_img_1 .`

Start node container

`sudo docker run -d --name node_cont_1 -p $DOCKERIP:8080:8080 -i -t node_img_1`

Build redis container

`sudo docker build  -t redis_img_1 .`

Start redis container

`sudo docker run -d --name redis_cont_1 -p $DOCKERIP:6379:6379 -i -t redis_img_1`
