FROM python:3.7-slim

RUN useradd -ms /bin/bash dev

RUN apt-get update \
    && apt-get install -y --no-install-recommends curl git jq unzip \ 
    && pip install --user ansible==2.8.1 awscli boto boto3 botocore \
    && PACKER_LATEST_VERSION="$(curl -s https://checkpoint-api.hashicorp.com/v1/check/packer | jq -r -M '.current_version')" \
    && curl "https://releases.hashicorp.com/packer/${PACKER_LATEST_VERSION}/packer_${PACKER_LATEST_VERSION}_linux_amd64.zip" --output /tmp/packer_linux_amd64.zip \
    && unzip /tmp/packer_linux_amd64.zip -d /usr/local/bin/ \
    && rm -f /tmp/packer_linux_amd64.zip \
    && apt-get clean

USER dev
WORKDIR /home/dev/sourcecode    

ENV PATH /home/dev/.local/bin/:$PATH

