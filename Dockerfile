FROM python:3.11

WORKDIR /College-ERP

# Copy the requirements.txt file into the container
COPY requirements.txt /app/

# Install the dependencies
RUN pip install -r /app/requirements.txt

# Copy the rest of the application code
COPY . /College-ERP/

# Command to run your app
CMD ["python3", "manage.py", "runserver"]
