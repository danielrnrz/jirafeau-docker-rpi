<h1>Jirafeau docker image to use with Raspberry PI </h1><br>
Build and run : <br>
<code>docker run -d -ti -p 8080:80 -v /your/path:/var/www/html --name jirafeau jirafeau</code><br>
The image uses Alpine linux with php-fpm 7.1 and Nginx as web server.
