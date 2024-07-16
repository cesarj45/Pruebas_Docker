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

********Docker Volumes********

-v

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