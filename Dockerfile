# Use the official Python runtime as a base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY main.py .

# Expose port 8080 (Cloud Functions default)
EXPOSE 8080

# Set environment variable for Functions Framework
ENV PORT=8080
ENV FUNCTION_TARGET=hello_world

# Run the function
CMD exec functions-framework --target=hello_world --port=$PORT
