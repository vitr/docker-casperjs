# docker-casperjs
Everything you need to run [CasperJS](http://casperjs.org/)

here is an example of the docker file
https://github.com/cmfatih/dockerhub/blob/master/phantomjs/Dockerfile

    phantom dockerfile
    https://github.com/fatihcode/dockerhub/edit/master/phantomjs/Dockerfile
    
    
    sudo apt-get install build-essential chrpath libssl-dev libxft-dev
    export PHANTOM_JS="phantomjs-2.1.1-linux-x86_64"
    wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2
    sudo tar xvjf $PHANTOM_JS.tar.bz2
    sudo mv $PHANTOM_JS /usr/local/share
    sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin
    
    phantomjs --version
    
    git clone git://github.com/n1k0/casperjs.git
    sudo ln -sf $(pwd)/bin/casperjs /usr/local/bin/casperjs
    casperjs --version
