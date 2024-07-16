<!-- iniciamos un contenedor con la ultima version de httpd y con el nombre apache -->
docker run -d --name apache -p 80:80 httpd

<!-- copiamos el archivo index.html al contenedor -->
docker cp index.html apache:/tmp

<!-- entramos al contenedor -->
docker exec -ti apache bash 

<!-- pero para que el index.html sea usado por nuestro servidor apache tenemos que moverlo a la ruta correcta. -->
<!-- en la DOCUMENTACION DE LA IMAGEN encontraremos las rutas necesarias. --> 

docker cp index.html apache:/usr/local/apache2/htdocs/