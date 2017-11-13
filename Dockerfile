FROM jfloff/alpine-python:2.7

RUN apk add --update libffi-dev openssl-dev

ADD ./requirements.txt /opt/base-requirements.txt
RUN pip install -r /opt/base-requirements.txt

ADD ./entrypoint.sh /opt/entrypoint.sh

WORKDIR /app

ONBUILD ADD ./requirements.txt /app/requirements.txt
ONBUILD RUN pip install -r requirements.txt
ONBUILD COPY . /app/

ENTRYPOINT [ "/opt/entrypoint.sh" ]
