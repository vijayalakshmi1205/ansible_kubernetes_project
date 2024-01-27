FROM  ubuntu:latest
RUN apt install -y apache2 \
 zip\
 unzip
ADD https:https:https://www.free-css.com/assets/files/free-css-templates/download/page296/inance.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
