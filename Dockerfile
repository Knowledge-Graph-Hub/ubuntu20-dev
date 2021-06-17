# syntax=docker/dockerfile:1

# Docker image on dockerhub is justaddcoffee/ubuntu20-dev
# Dockerfile is here:
# https://github.com/Knowledge-Graph-Hub/ubuntu20-dev/blob/main/Dockerfile

#Download base image ubuntu 20.04
FROM ubuntu:20.04

# LABEL about the custom image
LABEL maintainer="justaddcoffee@gmail.com"
LABEL version="0.1"
LABEL description="This is custom Docker Image for use in development of KG-hub projects and KGX"

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt-get update && apt-get install -y software-properties-common
RUN apt-get -y install build-essential curl wget tmux byobu htop -qyy
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1
