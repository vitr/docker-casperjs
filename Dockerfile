# CasperJs
# http://casperjs.org/
#
# Usage
#  exec mode
#    docker run --rm vitr/casperjs casperjs --version
#    docker run --rm vitr/casperjs phantomjs --version
#
#  daemon mode
#    docker run -d --name casperjs-daemon -v /home/ubuntu/test:/mnt/test --restart always vitr/casperjs

FROM vitr/phantomjs

MAINTAINER vitr http://vit.online

RUN apt-get install -y git python

WORKDIR /root
RUN git clone git://github.com/n1k0/casperjs.git
RUN mv casperjs /opt/
RUN ln -sf /opt/casperjs/bin/casperjs /usr/local/bin/casperjs
RUN mkdir /home/casperjs

WORKDIR /home/casperjs

# reset from parent image
ENTRYPOINT []

# run the image as daemon
CMD echo "casperjs running..." && tail -f /dev/null
