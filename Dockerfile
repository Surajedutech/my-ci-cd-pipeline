# Use an official Python runtime as a base image
FROM python:3.9-slim
 
# Set the working directory
WORKDIR /app
 
# Copy the application files into the container
COPY . /app
 
# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
 
# Expose port 8080 for the application
EXPOSE 8080
 
# Command to run the application
CMD ["python", "main.py"]
