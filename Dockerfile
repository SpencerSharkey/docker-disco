FROM jfloff/alpine-python:2.7

WORKDIR /app

RUN apk add --update libffi-dev openssl-dev
ADD ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY . /app

CMD python -m disco.cli
