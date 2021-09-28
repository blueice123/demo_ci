## BASE IMAGE
FROM 239234376445.dkr.ecr.ap-northeast-2.amazonaws.com/demo:origin_v3

## Setup the meddleware
COPY ./config/php.ini /etc/php7/php.ini
COPY ./config/httpd.conf /etc/apache2/httpd.conf
COPY ./config/preStop.sh /preStop.sh
RUN chmod 700 /preStop.sh

## IMPORT SOURCE CODE
COPY ./source  /var/www/localhost/htdocs/

## Excute command
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]