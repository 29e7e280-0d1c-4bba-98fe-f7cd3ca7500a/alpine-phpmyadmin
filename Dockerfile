FROM netroby/alpine-php

RUN wget --no-check-certificate -c https://github.com/phpmyadmin/phpmyadmin/archive/RELEASE_4_6_3.tar.gz; \
        tar zxvf RELEASE_4_6_3.tar.gz;\
        mv phpmyadmin-RELEASE_4_6_3 /www; \
        unlink *.tar.gz
RUN sed -i -e "s/^upload_max_filesize\s*=\s*2M/upload_max_filesize = 64M/" /etc/php/php.ini
RUN sed -i -e "s/^post_max_size\s*=\s*8M/post_max_size = 64M/" /etc/php/php.ini

COPY config.inc.php /www/config.inc.php

EXPOSE 8080

ENTRYPOINT ["php", "-S", "0.0.0.0:8080", "-t", "/www/"]

CMD []
