# set base image (host OS)
FROM python:3.9-slim

# set the working directory in the container
WORKDIR /volvoAAOS2mqttDave

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY /src .

# command to run on container start
CMD [ "python", "-u", "./main.py" ]
