# Start with an official Python image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install Flask
RUN pip install Flask

# Copy the app code into the container
COPY app.py /app/app.py

# Expose the port Flask will run on
EXPOSE 1337

# Run the Flask application
CMD ["python", "app.py"]
