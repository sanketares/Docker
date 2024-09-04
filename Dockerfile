# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Add a custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/

# Copy the HTML file to the Nginx web root
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
