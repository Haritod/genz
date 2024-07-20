FROM httpd

RUN echo "this app was built in jenkins" > /usr/local/apache2/htdocs/index.html
