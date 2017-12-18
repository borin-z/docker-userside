###### Usage:
~~~bash
git clone git@github.com:borin-z/docker-userside.git /opt/userside
cd /opt/userside
docker-compose up -d --build
~~~
###### First Init:
~~~bash
docker exec -it userside_fpm_1 php /opt/userside/userside_install.phar
~~~
###### Usage cron:
~~~bash
* * * * * root docker exec -it userside_fpm_1 php /opt/userside/userside cron > /dev/null 2>&1
~~~
