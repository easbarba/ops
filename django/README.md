# Django - Stack base

Sets up a reproducible Django development base.

## Base

## Container

    docker build --tag $USER/django .

To confirm if Django working correctly lets grab its version

    docker run --rm $USER/django python -c 'import django; print(django.get_version())'


## Vagrant

## Kubernetes

## Terraform
