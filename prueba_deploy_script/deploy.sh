#!/usr/bin/env bash

docker run -d --name contenedor_nginx -p 9999:80 nginx
#se copia todo loque esta en el directorio actual . al contenedor en la ruta /usr/share/nginx/html/
docker cp . contenedor_nginx:/usr/share/nginx/html/
#mostramos el contenido del la ruta dentro del contenedor
docker exec -it contenedor_nginx ls /usr/share/nginx/html/