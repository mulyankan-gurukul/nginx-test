FROM nginx:latest

# Create necessary directories
RUN mkdir -p /var/www/public /etc/nginx/ssl

# Copy static files to serve
COPY ./loginm/public /var/www/public

# Copy the NGINX configuration
COPY ./nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

# Copy SSL certificates
COPY ./nginx/ssl /etc/nginx/ssl

# Expose ports
EXPOSE 80 443
