ARG BUILD_FROM
FROM $BUILD_FROM

# Add community packets
RUN echo -e "https://nl.alpinelinux.org/alpine/latest-stable/main\nhttps://nl.alpinelinux.org/alpine/latest-stable/community" > /etc/apk/repositories

# Install requirements for add-on
RUN apk add --no-cache python3 bash py3-pip

# set the working directory in the container
WORKDIR /volvoAAOS2mqttDave

# download requirements.txt
RUN wget --no-cache https://raw.githubusercontent.com/chrizstone/volvo2mqttdave/main/requirements.txt

# install dependencies
RUN pip install -r requirements.txt --break-system-packages

# copy the content of the local src directory to the working directory
COPY / .
RUN chmod a+x /volvoAAOS2mqttDave/run.sh

# command to run on container start
CMD [ "/volvoAAOS2mqttDave/run.sh" ]
