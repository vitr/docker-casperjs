# phantomjs
#
# Usage
# docker run vitr/casperjs phantomjs -v
# docker run vitr/casperjs casperjs --version


#   docker run cmfatih/phantomjs /usr/bin/phantomjs -v
#   docker run cmfatih/phantomjs /usr/bin/casperjs --version
#   docker run -v `pwd`:/mnt/test cmfatih/phantomjs /usr/bin/phantomjs /mnt/test/test.js

# VERSION 1.0.0

FROM vitr/phantomjs

MAINTAINER vitr http://vit.online

RUN apt-get install -y git python

WORKDIR /root
RUN git clone git://github.com/n1k0/casperjs.git
RUN mv casperjs /opt/
RUN ln -sf /opt/casperjs/bin/casperjs /usr/local/bin/casperjs
RUN mkdir /home/casperjs

WORKDIR /home/casperjs

ENTRYPOINT ["/bin/sh", " -c"]

# Default command
CMD tail -f /dev/null
