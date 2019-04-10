FROM python:3.7-alpine
MAINTAINER London App Developer Ltd.

ENV PYTHONUNBUFFERED 1

# Install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Setup directory structure
RUN mkdir -p /app
WORKDIR /app
COPY . /app

RUN adduser -D user
USER user
