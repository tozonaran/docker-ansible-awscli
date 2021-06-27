FROM python:3.7-slim

RUN useradd -ms /bin/bash dev

USER dev
WORKDIR /home/dev/sourcecode

RUN pip install --user ansible==2.8.1 awscli boto boto3 botocore

ENV PATH /home/dev/.local/bin/:$PATH

