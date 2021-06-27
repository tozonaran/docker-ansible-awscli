# docker-ansible-awscli

[![Docker Image CI](https://github.com/tozonaran/docker-ansible-awscli/actions/workflows/docker-image.yml/badge.svg?branch=master)](https://github.com/tozonaran/docker-ansible-awscli/actions/workflows/docker-image.yml)

# Overview

The purpose of this container is to provide Ansible and AWS CLI.

- Python 3.7
- awscli:latest
- boto:latest
- boto3:latest
- botocore:latest

Build and Public to [dockerhub](https://hub.docker.com/repository/docker/tozonaran/ansible-awscli/general)

# Environment variables

This image uses environment variables for configuration.

|Available variables     |Default value        |Description                                         |
|------------------------|---------------------|----------------------------------------------------|
|`AWS_ACCESS_KEY_ID`     |no default           | AWS Access Key                                     |
|`AWS_SECRET_ACCESS_KEY` |no default           | AWS Secret Access Key                              |


# Mounting your Ansible source code

By default this container has created a working directory `/home/dev/sourcecode` and is the default working directory.

You are able to mount your Ansible source code using the following cmd Docker parameter:-

```
-v /my/local/ansible/repo/code:/home/dev/sourcecode
```

# Example Usage

```
docker pull tozonaran/ansible-awscli
```

In your Ansible projects root folder you are able to run the following Docker command.

```
docker run \
 -v ${PWD}:/home/dev/sourcecode \
 -e AWS_ACCESS_KEY_ID={{$YOUR_AWS_ACCESS_KEY_ID}} \
 -e AWS_SECRET_ACCESS_KEY={{$YOUR_AWS_SECRET_ACCESS_KEY}} \
 tozonaran/ansible-awscli \
 ansible-playbook {{$YOUR_PLAYBOOK}}.yml
```

# License

Everything in [this repository](https://github.com/tozonaran/docker-ansible-awscli) is published under [GPL-3](https://spdx.org/licenses/GPL-3.0).

# User Feedback

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/tozonaran/docker-ansible-awscli/issues).
