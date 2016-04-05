# alpine linux + php + phpmyadmin

Update 2016-04-05

Run PHPMyAdmin with alpine + php built in web server


## Usage

First， you need to run mysql in docker, and this image need link a running mysql instance container

```
docker run --restart=always --name pma -d --link db:db -p 127.0.0.1:8080:8080 -v /home/huzhifeng/.ssh/config.inc.php:/www/config.inc.php netroby/alpine-phpmyadmin

```

Then open browser, visit http://***.***.host.ip:8080

You will see the phpmyadmin login page
