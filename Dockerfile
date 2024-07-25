FROM almalinux:latest
RUN yum -y remove cronie-anacron
RUN yum -y install cronie-noanacron
RUN yum -y install httpd
RUN yum -y install nodejs
RUN npm -g i n
RUN n latest
RUN yum -y remove nodejs
RUN yum -y install https://rpms.remirepo.net/enterprise/remi-release-9.rpm
RUN yum -y module install php:remi-8.2
RUN yum -y install php
RUN yum -y install php-bcmath php-ctype php-fileinfo php-json php-mbstring php-openssl php-pdo php-tokenizer php-xml php-zip php-gd php-mysql