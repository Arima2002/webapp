# Use an official nginx image as the base
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the HTML file into the container
COPY index.html /usr/share/nginx/html/

# Expose the port 80 for the web server
EXPOSE 80

# Run the command to start the nginx server when the container starts
CMD ["nginx", "-g", "daemon off;"]
