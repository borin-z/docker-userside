###### Usage:
~~~bash
git clone https://github.com/borin-z/docker-userside.git /opt/userside
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
###### Module
* usm_peleng
~~~sh
mkdir -p /opt/userside_modules/usm_peleng/log
~~~
Download peleng module from official site, copy file **usm_peleng.pl** and **usm_peleng.conf** in **/opt/userside_modules/usm_peleng**. Change **usm_peleng.conf**. Do not forget to specify the path to the folder with logs. The correct path to the folder with logs will be **/opt/usm_peleng/log**
To run the module, use the command:
~~~sh
docker run --rm -v /opt/userside_modules/usm_peleng:/opt/usm_peleng borin/userside:usm_peleng
~~~
Run the module with timezone:
~~~sh
docker run --rm -e TZ=Asia/Yekaterinburg -v /opt/userside_modules/usm_peleng:/opt/usm_peleng borin/userside:usm_peleng
~~~
