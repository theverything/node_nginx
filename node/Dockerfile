############################################################
# Dockerfile to build Nodejs App Containers
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM dockerfile/ubuntu

# File Author / Maintainer
MAINTAINER Jeffrey Horn

# Update and install packages
RUN apt-get update
RUN apt-get install -y build-essential libssl-dev libmysqlclient-dev python curl git ruby

# Install Node.js
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs
RUN echo '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bash_profile

RUN gem install sass

RUN npm install bower gulp -g

RUN mkdir /home/scripts
ADD pull_repo.sh /home/scripts/pull_repo.sh

# Expose ports
EXPOSE 8181

# Set the default command to execute
# when creating a new container
CMD ["sh", "/home/scripts/pull_repo.sh"]
