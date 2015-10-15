FROM ubuntu:14.04
MAINTAINER Artem Ivantsov <aivantsov@tonomi.com>

RUN apt-get update && apt-get install -y nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD run.sh /run.sh
ADD proxy.conf /etc/nginx/sites-enabled/frontend.conf

EXPOSE 80 443

CMD /run.sh
