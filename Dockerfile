FROM python:3

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir ~/black

COPY * ~/black/
COPY .git ~/black/.git
WORKDIR ~/black
RUN ls -la
RUN python setup.py install

ENTRYPOINT /usr/local/bin/black --check --diff  .
