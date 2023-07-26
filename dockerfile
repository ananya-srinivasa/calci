# Basic nginx dockerfile starting with Linux
FROM nginx:latest

# Expose port 80 for Nginx
EXPOSE 80

# Optionally, you can copy your custom nginx configuration file into the container
# COPY nginx.conf /etc/nginx/nginx.conf

# The default CMD in the nginx:latest image already starts Nginx automatically
# If you need to customize it further, you can provide your own CMD instruction here
# CMD ["nginx", "-g", "daemon off;"]
