FROM python:3

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir ~/black
COPY * ~/black/
WORKDIR ~/black
RUN python setup.py install

ENTRYPOINT /usr/local/bin/black --check --diff  .
