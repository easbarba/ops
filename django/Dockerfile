FROM python:3.9-bullseye
MAINTAINER EAS Barbosa

# python won’t try to write .pyc files on the import of source modules.
ENV PYTHONDONTWRITEBYTECODE=1
# force the stdout and stderr streams to be unbuffered.
ENV PYTHONUNBUFFERED=1

# BASE PACKAGES
ARG DEBIAN_FRONTEND=noninteractive
ENV BUILD_PACKAGES apt-utils sqlite3

RUN apt-get update -qy && apt-get install -qy $BUILD_PACKAGES --no-install-recommends && apt-get clean -qy

# PYTHON'S PIP LATEST VERSION
RUN python -m pip install pip --upgrade

# PROJECT DEPENDENCIES
WORKDIR /usr/src/app
COPY base/requirements.txt .
RUN pip install -r requirements.txt
