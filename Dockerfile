FROM httpd

RUN echo "this app was built in jenkins - genzimage1" > /usr/local/apache2/htdocs/index.html
