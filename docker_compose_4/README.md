`docker-compose.yml`
```
#Iniciar Servicios: 

docker-compose up -d


#Detener Servicios: 

docker-compose down


#Ver Estado: 

docker-compose ps.


#Escalar Servicios: ESTO SE REFIERE A REPLICAR EL SERVICIO UN NUMERO DETERMINADO DE VECES (ESCALADO HORIZONTAL)

docker-compose up --scale <service>=<number>.


docker-compose start nombre_container
docker-compose stop nombre_container