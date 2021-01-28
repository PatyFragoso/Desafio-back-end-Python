FROM python:3.6-alpine



RUN apk update
RUN apk add build-base
RUN apk add linux-headers

RUN apk add bash

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN apk add --update tzdata
ENV TZ=America/Sao_Paulo


RUN pip install --upgrade pip
RUN pip install -r /desafio-back-end/requirements

CMD python /desafio-back-end/app.py

