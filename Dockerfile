FROM python:3

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir ~/black
WORKDIR ~/black

COPY * ./
RUN ls -la ~/black
COPY .git/ ./.git/
RUN ls -la
RUN python setup.py install

ENTRYPOINT /usr/local/bin/black --check --diff  .
