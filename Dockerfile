# Use an official lightweight Python image as a base
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy only requirements first (for better caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose the application port
EXPOSE 8080

# Command to run the application
CMD ["python", "app.py"]
