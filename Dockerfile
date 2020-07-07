FROM python:3.8-slim

RUN apt-get -y update && \
    apt-get install -y \
    build-essential \
    manpages-dev \
    python3-dev \
    python3-pip \
    && \
    apt-get clean

COPY requirements.txt ./

RUN pip3 install --upgrade pip && \
    pip3 install --no-cache-dir -r requirements.txt


RUN mkdir /usr/scripts
VOLUME /usr/scripts
VOLUME /usr/local/lib/python3.8/site-packagesv