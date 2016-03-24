#Docker Image for CasperJS
Everything you need to run [CasperJS](http://casperjs.org/)


#### Usage
start the docker container

    docker run -d --name casperjs-daemon -v /home/ubuntu/test:/mnt/test --restart always vitr/casperjs

`/home/ubuntu/test` is a local folder with you casperjs tests, it's mounted into the container

use the container @TODO set WORKDIR to /mnt/test/

    docker exec casperjs-daemon casperjs --version
    docker exec casperjs-daemon casperjs test /mnt/test/testing.js
 
@TODO add a sample  test


'hello world' and version check (default script)

    docker run --rm vitr/phantomjs
mount your own script

    docker run --rm -v `pwd`/myscript.js:/home/phantomjs/script.js vitr/phantomjs

#### Some key points
