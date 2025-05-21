FROM nginx:latest

# Copy the public directory to the container
COPY ./loginm/public /var/www/public

# Copy the NGINX configuration file
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy the SSL certificates directory
COPY ./nginx/ssl /etc/nginx/ssl

# Expose ports 80 and 443
EXPOSE 80 443