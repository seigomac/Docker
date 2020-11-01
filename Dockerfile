FROM centos
MAINTAINER Seigo Akazawa <seigomac24@gmail.com>
# Run →bulid
#Run echo "now building"
#CMD runするときに実行
# CMD echo "Now running"
#CMD ["echo" , "Now Running"]
Run yum install -y httpd
ADD ./index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D","FOREGROUND"]



