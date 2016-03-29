#Docker Image for CasperJS
Everything you need to run CasperJS http://casperjs.org

#### Usage
start the docker container

    docker run -d --name casperjs-daemon -v /home/ubuntu/test:/mnt/test --restart always vitr/casperjs

`/home/ubuntu/test` is a local folder with you casperjs tests, it's mounted into the container

  exec mode
    docker run --rm vitr/casperjs casperjs --version
    docker run --rm vitr/casperjs phantomjs --version

  daemon mode
    docker run -d --name casperjs-daemon -v /home/ubuntu/test:/mnt/test --restart always vitr/casperjs
  sample test
    docker exec casperjs-daemon casperjs test /opt/casperjs/samples/googletesting.js


use the container @TODO set WORKDIR to /mnt/test/

    docker exec casperjs-daemon casperjs --version
    docker exec casperjs-daemon casperjs test /mnt/test/testing.js
 
@TODO add a sample  test


'hello world' and version check (default script)

    docker run --rm vitr/phantomjs
mount your own script

    docker run --rm -v `pwd`/myscript.js:/home/phantomjs/script.js vitr/phantomjs

#### Some key points

@TODO add key points

------------------------------------------
[![Analytics](https://vitr-analytics.appspot.com/UA-75628680-1/docker-casperjs?flat-gif)](https://github.com/vitr/google-analytics-beacon/)
