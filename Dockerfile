# Use a lightweight Python image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Set environment variable for Cloud Run
ENV PORT=8080

# Expose port 8080 (Cloud Run requires this)
EXPOSE 8080

# Run the application
CMD ["python", "app.py"]
