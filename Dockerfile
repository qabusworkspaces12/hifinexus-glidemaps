# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the static files to the Nginx web directory
COPY ./index.html /usr/share/nginx/html/
COPY ./css /usr/share/nginx/html/css/
COPY ./js /usr/share/nginx/html/js/

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
