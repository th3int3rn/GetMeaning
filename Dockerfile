
FROM python:latest

# Setup
RUN apt-get -y update
RUN apt-get -y install git python3 pip

# Create app folder
RUN mkdir myapp

# Switch to app directory
WORKDIR myapp

# Setup github
RUN git init
RUN git pull --verbose https://github.com/OmkarPathak/Python-Programs master

# Switch to script directory
WORKDIR Script

ARG WORD
ENV WORD=$WORD
# Copy the requirements in to the app
COPY requirements.txt .
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
#Run the python script
COPY P06_GetMeaning.py .
CMD python3 P06_GetMeaning.py $WORD


