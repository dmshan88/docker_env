FROM centos:centos7.7.1908
COPY ./repo/ /etc/yum.repos.d/
RUN sed -i "s/plugins=1/plugins=0/g" /etc/yum.conf \
&& mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup \
&& mv /etc/yum.repos.d/CentOS-Base-ustc /etc/yum.repos.d/CentOS-Base.repo \
&& yum clean all \
&& yum makecache \
&& yum install initscripts openssl mongodb-org -y 