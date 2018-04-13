FROM debian:stretch
MAINTAINER Timo Furrer <tuxtimo@gmail.com

RUN apt-get update
RUN apt-get install --yes python3-pip
RUN pip3 install radish-bdd

ADD . /test
WORKDIR /test

ENV PWD /test

CMD PYTHONPATH=src/ radish features/
