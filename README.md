# docker-ansible-awscli

[![Docker Image CI](https://github.com/tozonaran/docker-ansible-awscli/actions/workflows/docker-image.yml/badge.svg?branch=master)](https://github.com/tozonaran/docker-ansible-awscli/actions/workflows/docker-image.yml)

# Overview

The purpose of this container is to provide Ansible and AWS CLI.

- Python 3.7
- awscli:latest
- boto:latest
- boto3:latest
- botocore:latest

# Environment variables

This image uses environment variables for configuration.

|Available variables     |Default value        |Description                                         |
|------------------------|---------------------|----------------------------------------------------|
|`AWS_ACCESS_KEY_ID`     |no default           | AWS Access Key                                     |
|`AWS_SECRET_ACCESS_KEY` |no default           | AWS Secret Access Key                              |

# Usage

In your Ansible projects root folder you are able to run the following Docker command.

```
docker run \
 -v ${PWD}:/home/dev/sourcecode \
 -e AWS_ACCESS_KEY_ID={{$YOUR_AWS_ACCESS_KEY_ID}} \
 -e AWS_SECRET_ACCESS_KEY={{$YOUR_AWS_SECRET_ACCESS_KEY}} \
 tozonaran/ansible-awscli \
 ansible-playbook {{$YOUR_PLAYBOOK}}.yml
```

# User Feedback

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/tozonaran/docker-ansible-awscli/issues).
