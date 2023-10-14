FROM python:3.12-slim-bookworm
MAINTAINER Timo Furrer <tuxtimo@gmail.com

RUN python -m pip install radish-bdd
RUN python -m pip install tox

ADD . /test
WORKDIR /test

ENV PWD /test

CMD PYTHONPATH=. radish features/
