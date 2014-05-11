Build nginx container

`sudo docker build  -t nginx_img_1 .`

Start nginx container

`sudo docker run -d --name nginx_cont_1 -p 80:80 -i -t nginx_img_1`

Build node container

`sudo docker build  -t node_img_1 .`

Start node container
`sudo docker run -d --name node_cont_1 -p 8080:8080 -i -t node_img_1`
