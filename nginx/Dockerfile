############################################################
# Dockerfile to build Nginx Installed Containers
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM dockerfile/ubuntu

# File Author / Maintainer
MAINTAINER Jeffrey Horn

# Install Nginx
# Update the repository
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update

# Download and Install Nginx
RUN apt-get install -y nginx

# Backup orignal config
Run cp -v /etc/nginx/nginx.conf  /etc/nginx/nginx.conf.backup

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose ports
EXPOSE 80

# Set the default command to execute
# when creating a new container
CMD service nginx start
