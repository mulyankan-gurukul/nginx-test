FROM nginx:latest

# Create necessary directories
RUN mkdir -p /var/www/public /etc/nginx/ssl && \
    ls -ltra /var/www && \
    ls -ltra /etc/nginx && \
    ls -ltra /etc/nginx/conf.d && \
    cat /etc/nginx/conf.d/default.conf

# Copy static files to serve
COPY ./loginm/public /var/www/public
RUN ls -ltra /var/www/public

# Copy the NGINX configuration
COPY ./nginx/default.conf /etc/nginx/conf.d/
RUN ls -ltra /etc/nginx/conf.d && \
    cat /etc/nginx/conf.d/default.conf


# Copy SSL certificates
COPY ./nginx/ssl /etc/nginx/ssl
RUN ls -ltra /etc/nginx/ssl

# Expose ports
EXPOSE 80 443
