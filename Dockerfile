# Python base image
FROM python:3.9-slim

WORKDIR /app

# Copy application code and dependencies into the container
COPY app.py /app/
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5001

#command to run the application
CMD ["python", "app.py"]
