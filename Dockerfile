# Base Image
FROM ubuntu:latest

# Install nginx and curl
RUN apt-get install update && apt-get install -y nginx && apt-get install -y curl

# Add hostname to index file
RUN curl http://169.254.169.254/latest/meta-data/hostname >> /var/www/html/index.html

# Port
EXPOSE 80/tcp

# Command to start nginx
CMD ["nginx" "-g", "daemon off;"]