## BASE IMAGE
FROM 239234376445.dkr.ecr.ap-northeast-2.amazonaws.com/demo:origin_v3

## IMPORT SOURCE CODE
COPY ./source  /var/www/localhost/htdocs/

## Excute command
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]