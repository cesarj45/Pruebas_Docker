#Practica de levantar un contenedor mysql y conectarnos desde nuesto DBMS, workbeanch por ejemplo.
#Desde el gestor creamos una nueva conexion a la ip de bucle invertido 127.0.0.1 en el puerto 3306 del contenedor y de esa manera tenemos acceso a la DB.
#Si ya tenemos en uso el puerto 3306 de nuestra maquina host cambiamos a otro en este caso al 3305doc

MYSQL_ROOT_PASSWORD=12345678
MYSQL_DATABASE=docker-db
MYSQL_USER=user
MYSQL_PASSWORD= 123456

docker run -d -p 3305:3306 -e "MYSQL_ROOT_PASSWORD=12345678" -e "MYSQL_DATABASE=docker-db" -e "MYSQL_USER=user" -e "MYSQL_PASSWORD=123456" mysql

