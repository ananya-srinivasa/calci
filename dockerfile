# Basic nginx dockerfile starting with Windows Server Core
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Download and install Nginx
RUN powershell -Command Invoke-WebRequest -Uri 'https://nginx.org/download/nginx-1.21.1.zip' -OutFile 'C:\nginx.zip' ; \
    Expand-Archive -Path 'C:\nginx.zip' -DestinationPath 'C:\' ; \
    Remove-Item 'C:\nginx.zip' -Force

# Set environment variables
ENV NGINX_HOME "C:\nginx-1.21.1"
ENV NGINX_CONF_PATH "%NGINX_HOME%\conf\nginx.conf"

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx service when the container runs
CMD ["cmd", "/C", "%NGINX_HOME%\\nginx.exe", "-g", "daemon off;"]
