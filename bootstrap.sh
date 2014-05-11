export DOCKERIP=$(sudo ifconfig docker0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
sudo docker build  -t nginx_img_1 ./nginx
sudo docker run -d --name nginx_cont_1 -p 80:80 -i -t nginx_img_1
sudo docker build  -t node_img_1 ./node
sudo docker run -d --name node_cont_1 -p $DOCKERIP:8080:8080 -i -t node_img_1
sudo docker build  -t redis_img_1 ./redis
sudo docker run -d --name redis_cont_1 -p $DOCKERIP:6379:6379 -i -t redis_img_1
