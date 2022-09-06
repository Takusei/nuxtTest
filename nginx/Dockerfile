FROM amazonlinux:latest

RUN yum update -y

## nginx
RUN yum install -y amazon-linux-extras
RUN amazon-linux-extras install nginx1
RUN systemctl enable nginx

COPY ./nginx.conf /etc/nginx/

## nodejs
RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash -
RUN yum install nodejs -y
RUN yum -y install wget
RUN wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
RUN yum -y install yarn

WORKDIR /srv/frontend/app