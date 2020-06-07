sed -i "s/cn.archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list \
&& sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list \
&& add-apt-repository ppa:ondrej/php -y \
&& add-apt-repository 'deb http://archive.ubuntu.com/ubuntu trusty universe' -y \
&& apt-get update \
&& apt-get install php5.6 apache2 -y \
&& apt-get install php-mongo php-mongodb  -y \
&& apt-get install php5.6-gd  php5.6-xml php5.6-mbstring -y \
&& apt-get install php5.6-mysql  -y \
&& apt-get install p7zip-full  -y  \