# Tarea 4 - Systemd Unit

Crear un systemd unit de tipo servicio para ejecutar un script imprima un saludo y la fecha actual. 

Opcionalmente el script puede ser mas complejo para que este no termine y se quede imprimiendo hola mundo cada cierta cantidad de tiempo.

Subir un readme file explicando el proceso de instalación y uso del servicio.
## Creando script
Crearemos el script con el siguiente codigo
~~~
#!/bin/bash
while true; do
    echo "Hola, ¡bienvenido! La fecha actual es: $(date)"
    sleep 30
done
~~~

le daremos los permisos al script:
~~~
chmod +x hello-script.sh
~~~

## Creando un servicio
Debemos ir a la siguiene ruta por medio de una terminal
~~~
cd /etc/systemd/system
~~~

Crearemos un archivo llamado:
~~~
sudo nano hello-service.service
~~~

Tendra la siguiente estructura:
~~~
[Unit]
Description=Script de saludo y fecha

[Service]
ExecStart=/home/marco/Documentos/Repositorio/SOPES1/so1_actividades_201122934/actividad4/hello_script.sh
Restart=always
User=marco

[Install]
WantedBy=default.target
~~~

Recargar la configuración de systemd
~~~
sudo systemctl daemon-reload
~~~
Iniciar el servicio
~~~
sudo systemctl start hello-service
~~~

Verificar el servicio
~~~
sudo systemctl status hello-service
~~~