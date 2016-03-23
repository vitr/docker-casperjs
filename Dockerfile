# phantomjs
#
# Usage
# docker run vitr/casperjs phantomjs -v
# docker run vitr/casperjs casperjs --version


#   docker run cmfatih/phantomjs /usr/bin/phantomjs -v
#   docker run cmfatih/phantomjs /usr/bin/casperjs --version
#   docker run -v `pwd`:/mnt/test cmfatih/phantomjs /usr/bin/phantomjs /mnt/test/test.js

# VERSION 1.0.0

FROM ubuntu

MAINTAINER vitr

# Env
ENV PHANTOMJS_VERSION 2.1.1

# Commands
RUN \
  sudo apt-get update && \
  sudo apt-get upgrade -y && \
  sudo apt-get install -y vim git wget libfreetype6 libfontconfig bzip2 && \
  sudo apt-get -y install python-pip
  cd ~ && \
  export PHANTOM_JS="phantomjs-2.1.1-linux-x86_64" && \
  wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2 && \
  sudo tar xvjf $PHANTOM_JS.tar.bz2 && \
  sudo mv $PHANTOM_JS /usr/local/share && \
  sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin && \
  phantomjs --version && \
  git clone https://github.com/n1k0/casperjs.git && \
  cd casperjs && \
  sudo ln -sf $(pwd)/bin/casperjs /usr/local/bin/casperjs && \
  casperjs --version  
  
  
#  tar -xjf /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 -C /tmp && \
#  rm -f /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
#  mv /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/ /srv/var/phantomjs && \
#  ln -s /srv/var/phantomjs/bin/phantomjs /usr/bin/phantomjs && \
#  git clone https://github.com/n1k0/casperjs.git /srv/var/casperjs && \
#  ln -s /srv/var/casperjs/bin/casperjs /usr/bin/casperjs && \
#  apt-get autoremove -y && \
#  apt-get clean all

# Default command
CMD ["tail -f /dev/null"]
