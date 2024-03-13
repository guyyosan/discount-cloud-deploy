# Use the official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.10-slim

# Allow statements and log messages to immediately appear in the Knative logs
ENV PYTHONUNBUFFERED True

ENV APP_HOME /app
WORKDIR $APP_HOME
ADD ./requirements.txt ./requirements.txt
# Install production dependencies.
RUN pip install --no-cache-dir -r requirements.txt
# RUN apt-get update \
#     && apt-get install --yes --no-install-recommends \
#     gcc g++ libffi-dev \
#     && pip install --no-cache-dir -r requirements.txt \
#     && apt-get autoremove --yes gcc g++ libffi-dev \
#     && rm -rf /var/lib/apt/lists/*
# Copy local code to the container image.
COPY . ./

# Run the web service on container startup. Here we use the gunicorn
# webserver, with one worker process and 8 threads.
# For environments with multiple CPU cores, increase the number of workers
# to be equal to the cores available.
# Timeout is set to 0 to disable the timeouts of the workers to allow Cloud Run to handle instance scaling.
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 server:app

# nothing