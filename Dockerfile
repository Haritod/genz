FROM httpd

RUN echo "this app was built in jenkins - genzimage4" > /usr/local/apache2/htdocs/index.html
