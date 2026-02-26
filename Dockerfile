# Use the lightweight Alpine Linux version of Nginx
FROM nginx:alpine

# Copy your HTML file into the Nginx default public directory
COPY index.html /usr/share/nginx/html/index.html

# Nginx starts automatically, so we don't need a CMD
EXPOSE 80
