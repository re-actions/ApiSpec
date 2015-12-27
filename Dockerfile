FROM pypy:3

MAINTAINER Maciej Maciaszek <maciej.maciaszek@gmail.com>

ENV PYTHONBUFFERED 1

RUN mkdir /api-spec
WORKDIR /api-spec
ADD requirements.txt /api-spec/

RUN pip install -r requirements.txt

ADD . /api-spec/
