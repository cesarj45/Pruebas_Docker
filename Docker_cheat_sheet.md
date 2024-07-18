<!-- 
********Imagenes en Docker********

La forma de nombrar a las imagenes de docker es <nombre>:<tag> 
Si no se especifica un tag para la imagen, docker usa latest para indicar que use la ultima version. ejemplo  node:latest
El formato completo de una imagen es mi-repo/nginx:v1.0
El repositorio por defecto es DockerHub por lo que no se pone, pero si es de otro repositorio seria algo asi:
Amazon ECR: 123456789012.dkr.ecr.region.amazonaws.com/mi-imagen:v1
Google GCR: gcr.io/proyecto-id/mi-imagen:v1
Azure ACR: mi-registro.azurecr.io/mi-imagen:v1
Quay.io: quay.io/mi-usuario/mi-imagen:v1


********Copiar archivos de Host al contenedor********

donde se especifica cp archivo contenedor:ruta_dentro_del_contenedor

docker cp index.html apache:/usr/local/apache2/htdocs/


********Docker Volumes********

La manera de persistir los datos de un contenedor es a travez de un volume que se replica en la maquina host
-v
ejemplos:
docker run -v nombre-volume:/var/lib/mysql mysql:5.7

docker run -v /home/usuario/nombre-volume:/var/lib/mysql mysql:5.7

docker run -v $PWD/nombre-volume:/var/lib/mysql mysql:5.7

docker run -d --it --name test-container -v "bootVolume":/tmp ubuntu:xenial

Para ver el espacio de alacenamiendo en disco de cada volume, imagen y contenedor:
docker system df -v
Para obtener un resumen menos detallado puedes usar:
docker system df       

Para obtener el uso de memoria RAM de cada contenedor y otros datos:
docker stats

Listar volumes:
docker volume ls

Borrar volume:
docker volume rm nombre-volume

Para modificar los permisos dentro del contenedor y estos se repliquen al host por que es un enlace directo seria de esta manera:
docker volume create my-volume
docker run -v my-volume:/app busybox sh -c "chown 1000:1000 /app && chmod 755 /app"

Tambien se pueden modificar los permisos antes de pasarle el volume al contenedor pero esto no es tan recomendable si se desea automatizar el proceso, pero tendria el mismo resultado, solo tendriamos que acceder directamente al sistema de archivos del host donde Docker almacena los volúmenes y modificar el propietario y los permisos en el directorio _data ya que este es el directorio real donde se almacenaran los datos en el volume:
sudo chown 1000:1000 /var/lib/docker/volumes/my-volume/_data
sudo chmod 755 /var/lib/docker/volumes/my-volume/_data

Puedes montar un volumen como solo lectura usando la opción :ro.
docker run -v my-volume:/app/data:ro my-image

La ruta por defecto de los volumes en docker es /var/lib/docker/volumes/nombre-volume/_data


********Formato de puertos********

puerto_host:puerto_container 
       3305:3306


********Comandos en Docker********
docker
├── build
│   ├── -f, --file       # Especifica el Dockerfile
│   ├── -t, --tag        # Asigna un nombre y una etiqueta a la imagen
│   ├── --build-arg      # Define variables de compilación
│   └── --no-cache       # Construye la imagen sin caché
│
├── run
│   ├── -d, --detach     # Ejecuta el contenedor en segundo plano
│   ├── -i, --interactive    # Mantiene STDIN abierto incluso si no está conectado
│   ├── -t, --tty        # Asigna un terminal pseudo-TTY
│   ├── -p, --publish    # Mapea un puerto del contenedor al host
│   ├── -e, --env        # Establece variables de entorno
│   ├── --name           # Asigna un nombre al contenedor
│   ├── -v, --volume     # Mapea un volumen del host al contenedor
│   ├── --rm             # Elimina el contenedor después de detenerlo
│   └── --network        # Conecta el contenedor a una red
│
├── ps
│   ├── -a, --all        # Muestra todos los contenedores (no solo los que están en ejecución)
│   └── -q, --quiet      # Muestra solo los IDs de los contenedores
│
├── images
│   ├── -a, --all        # Muestra todas las imágenes (incluyendo capas intermedias)
│   └── -q, --quiet      # Muestra solo los IDs de las imágenes
│
├── pull
│   └── --all-tags       # Descarga todas las etiquetas de la imagen
│
├── push
│   # No hay flags específicas comunes adicionales
│
├── exec
│   ├── -d, --detach     # Ejecuta el comando en segundo plano
│   ├── -i, --interactive    # Mantiene STDIN abierto incluso si no está conectado
│   └── -t, --tty        # Asigna un terminal pseudo-TTY
│
├── stop
│   └── -t, --time       # Tiempo de espera antes de forzar el cierre
│
├── rm
│   ├── -f, --force      # Forza la eliminación de un contenedor en ejecución
│   └── -v, --volumes    # Elimina los volúmenes asociados al contenedor
│
├── rmi
│   └── -f, --force      # Forza la eliminación de una imagen
│
└── logs
    ├── -f, --follow     # Sigue los logs en tiempo real
    └── --tail           # Muestra solo las últimas líneas de los logs
-->