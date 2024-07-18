<!-- La manera de persistir los datos de un contenedor es a travez de un volume que se replica en la maquina host -->
docker volumes 

-v
ejemplos: 

docker run -v nombre-volume:/var/lib/mysql mysql:5.7

docker run -v /home/usuario/nombre-volume:/var/lib/mysql mysql:5.7

docker run -v $PWD/nombre-volume:/var/lib/mysql mysql:5.7

docker run -d --it --name test-container -v "bootVolume":/tmp ubuntu:xenial

docker volume ls

docker volume rm nombre-volume

PRACTICA: 

docker run -d -p 80:80 -v $PWD/index.html:/usr/share/nginx/html/index.html nginx
<!-- de esta manera si hacemos cambios en el archivo dentro del contenedor, estos se reflejaran en el volume de la maquina host, en este caso en $PWD/index.html -->
apt update 
apt install nano
nano index.html
