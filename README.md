# Docker Image for CasperJS
Everything you need to run CasperJS http://casperjs.org  
built on top of PhantomJs image https://github.com/vitr/docker-phantomjs  
docker hub https://hub.docker.com/r/vitr/casperjs/

#### Usage
`/home/ubuntu/tests` is a folder on host machine with your casperjs tests, it's mounted into the container, you can change it to any folder you prefer.

**exec mode**

    docker run --rm vitr/casperjs casperjs --version
    docker run --rm vitr/casperjs phantomjs --version

start the docker container in **daemon mode**

    docker run -d --name casperjs-daemon -v /home/ubuntu/tests:/home/casperjs-tests --restart always vitr/casperjs

check version and run test

    docker exec casperjs-daemon casperjs --version
    docker exec casperjs-daemon casperjs test mytest.js
 
sample test
  
    docker exec casperjs-daemon casperjs test /opt/casperjs/samples/googletesting.js

run your own script

    docker exec casperjs-daemon casperjs test /home/casperjs-tests/mytest.js --log-level=debug;

#### Using PhantomJS
'hello world' and version check (default script)

    docker exec casperjs-daemon phantomjs /home/phantomjs/script.js

run your own script

    docker exec casperjs-daemon phantomjs /mnt/test/phantomjs/myscript.js

#### Some key points
By default the image is running as a daemon, note the command in Dockerfile 

    CMD echo "casperjs running..." && tail -f /dev/null
`echo "casperjs running..."` is used to identify the running daemon from the host `ps -ax`  
I prefer running it like this on the dedicated test server. Practicing TDD, I use it quite frequently and I don't want to mount the volumes on each test run. I pull my new tests from git directly into the once mounted folder and simply run `exec` inside the always running container.  
If you prefer exec mode, just don't forget the `--rm` option, as you may pollute your host machine with many useless stopped containers.

![Analytics](https://vitr-analytics.appspot.com/UA-75628680-1/docker-casperjs?pixel)
