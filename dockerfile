# Use the official Python image as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files into the container
COPY . .

# Set the default command to run the Python script
CMD ["python", "your_script.py"]
