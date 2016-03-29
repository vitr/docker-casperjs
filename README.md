#Docker Image for CasperJS
Everything you need to run CasperJS http://casperjs.org  
built on top of PhantomJs image https://github.com/vitr/docker-phantomjs

#### Usage
`/home/ubuntu/tests` is a local folder with you casperjs tests, it's mounted into the container

  exec mode
    docker run --rm vitr/casperjs casperjs --version
    docker run --rm vitr/casperjs phantomjs --version

start the docker container in daemon mode

    docker run -d --name casperjs-daemon -v /home/ubuntu/tests:/home/casperjs-tests --restart always vitr/casperjs

check version and run test

    docker exec casperjs-daemon casperjs --version
    docker exec casperjs-daemon casperjs test mytest.js
 
  sample test
  
    docker exec casperjs-daemon casperjs test /opt/casperjs/samples/googletesting.js

#### Using PhantomJS
'hello world' and version check (default script)

    docker exec casperjs-daemon phantomjs /home/phantomjs/script.js

run your own script

    docker exec casperjs-daemon phantomjs /mnt/test/phantomjs/myscript.js

#### Some key points

@TODO add key points
By default the image is running as a daemon, note the command in Dockerfile
`CMD echo "casperjs running..." && tail -f /dev/null`
`echo "casperjs running..."` is used to identify the running daemon from the host `ps -ax`


------------------------------------------
[![Analytics](https://vitr-analytics.appspot.com/UA-75628680-1/docker-casperjs?flat-gif)](https://github.com/vitr/google-analytics-beacon/)
