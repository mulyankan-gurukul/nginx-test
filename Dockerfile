FROM nginx:alpine

# Create required dirs
RUN mkdir -p /var/www/public /etc/nginx/ssl

# Copy public HTML content
COPY loginm/public /var/www/public

# Copy SSL certs
COPY nginx/ssl /etc/nginx/ssl

# Overwrite default Nginx config
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
