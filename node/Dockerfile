############################################################
# Dockerfile to build Nodejs App Containers
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM dockerfile/ubuntu

# File Author / Maintainer
MAINTAINER Jeffrey Horn

# Install Node.js
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs

RUN mkdir /home/app

ADD app.js /home/app/app.js

RUN echo '\n# Node.js\nexport PATH="/home/app/node_modules/.bin:$PATH"' >> /root/.bash_profile

# Expose ports
EXPOSE 8080

# Set the default command to execute
# when creating a new container
CMD ["nodejs", "/home/app/app.js"]
