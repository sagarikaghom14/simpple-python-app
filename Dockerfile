FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements file to container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code to container
COPY . .

# Expose port and run application
EXPOSE 5000
CMD ["python", "app.py"]
