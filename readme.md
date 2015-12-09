# alpine linux + php + phpmyadmin

Update 2015-12-09

Run PHPMyAdmin with alpine + php built in web server


## Usage

First， you need to run mysql in docker, and this image need link a running mysql instance container

```
docker run --name myadmin -d --link mysql_db_server:db -p 8080:8080 netroby/alpine-phpmyadmin
```

Then open browser, visit http://***.***.host.ip:8080

You will see the phpmyadmin login page
