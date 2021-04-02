FROM python:3.7-alpine
LABEL MAINTAINER: Skript / Kevin Romero

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D docker_user
USER docker_user