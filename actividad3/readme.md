# Gestión de Permisos
## Detalles

- Objetivo: Familiarizar a los estudiantes con la administración de usuarios, grupos y permisos en un sistema operativo Linux.
- Requisitos previos: Tener instalado un sistema Linux y acceso al terminal.
- Envio: Enviar Link al folder actividad3 de su repositorio de GitHub

## Instrucciones

- Crear un md file y resolver cada uno de los items solicitados a continución. Debe de colocar el comando utilizado asi como el resultado de este si es necesario. 

Parte 1: Gestión de Usuarios

1. Creación de Usuarios: Crea tres usuarios llamados `usuario1`, `usuario2` y `usuario3`.

~~~
sudo adduser usuario1
sudo adduser usuario2
sudo adduser usuario3
~~~

Resultado
~~~
[marco@fedora ~]$ sudo adduser usuario1

Confiamos que haya recibido la charla habitual del administrador
de sistema local. Por lo general se reduce a estas tres cosas:

    #1) Respeta la privacidad de otros.
    #2) Piensa antes de escribir.
    #3) Un gran poder conlleva una gran responsabilidad.

For security reasons, the password you type will not be visible.

[sudo] contraseña para marco: 
[marco@fedora ~]$ sudo adduser usuario2
[marco@fedora ~]$ sudo adduser usuario3
~~~


2. Asignación de Contraseñas: Establece una nueva contraseñas para cada usuario creado.
~~~
sudo passwd usuario1
sudo passwd usuario2
sudo passwd usuario3
~~~
Salida
~~~
[marco@fedora ~]$ sudo passwd usuario1
Cambiando la contraseña del usuario usuario1.
Nueva contraseña: 
Vuelva a escribir la nueva contraseña: 
passwd: todos los tokens de autenticación se actualizaron exitosamente.
[marco@fedora ~]$ sudo passwd usuario2
Cambiando la contraseña del usuario usuario2.
Nueva contraseña: 
Vuelva a escribir la nueva contraseña: 
passwd: todos los tokens de autenticación se actualizaron exitosamente.
[marco@fedora ~]$ sudo passwd usuario3
Cambiando la contraseña del usuario usuario3.
Nueva contraseña: 
Vuelva a escribir la nueva contraseña: 
passwd: todos los tokens de autenticación se actualizaron exitosamente.
~~~


3. Información de Usuarios: Muestra la información de `usuario1` usando el comando `id`.
Comandos
~~~
id usuario1
id usuario2
id usuario3
~~~
Salida
~~~
[marco@fedora ~]$ id usuario1
uid=1001(usuario1) gid=1001(usuario1) grupos=1001(usuario1)
[marco@fedora ~]$ id usuario2
uid=1002(usuario2) gid=1002(usuario2) grupos=1002(usuario2)
[marco@fedora ~]$ id usuario3
uid=1003(usuario3) gid=1003(usuario3) grupos=1003(usuario3)
~~~

4. Eliminación de Usuarios: Elimina `usuario3`, pero conserva su directorio principal.

Comando
~~~
sudo userdel -r usuario1
sudo userdel -r usuario2
sudo userdel -r usuario3
~~~
salida
~~~
[marco@fedora ~]$ sudo userdel -r usuario1
[sudo] contraseña para marco: 
[marco@fedora ~]$ sudo userdel -r usuario2
[marco@fedora ~]$ sudo userdel -r usuario3
~~~


Parte 2: Gestión de Grupos

1. Creación de Grupos: Crea dos grupos llamados `grupo1` y `grupo2`.
Comando
~~~
sudo groupadd grupo1
sudo groupadd grupo2
~~~
Salida
~~~
[marco@fedora ~]$ sudo groupadd grupo1
[marco@fedora ~]$ sudo groupadd grupo2
~~~


2. Agregar Usuarios a Grupos: Agrega `usuario1` a `grupo1` y `usuario2` a `grupo2`.
Comando
~~~
sudo usermod -aG grupo1 usuario1
sudo usermod -aG grupo2 usuario2
~~~
Salida
~~~
~~~

3. Verificar Membresía: Verifica que los usuarios han sido agregados a los grupos utilizando el comando `groups`.

~~~
~~~

4. Eliminar Grupo: Elimina `grupo2`.
Parte 3: Gestión de Permisos

1. Creación de Archivos y Directorios:

    Como `usuario1`, crea un archivo llamado `archivo1.txt` en su directorio principal y escribe algo en él.
    Crea un directorio llamado `directorio1` y dentro de ese directorio, un archivo llamado `archivo2.txt`.

~~~
~~~

2. Verificar Permisos: Verifica los permisos del archivo y directorio usando el comando `ls -l` y `ls -ld` respectivamente.

~~~
~~~


3. Modificar Permisos usando `chmod` con Modo Numérico: Cambia los permisos del `archivo1.txt` para que sólo `usuario1` pueda leer y escribir (permisos `rw-`), el grupo pueda leer (permisos `r--`) y nadie más pueda hacer nada.

~~~
~~~


4. Modificar Permisos usando `chmod` con Modo Simbólico: Agrega permiso de ejecución al propietario del `archivo2.txt`.

~~~
~~~



5. Cambiar el Grupo Propietario: Cambia el grupo propietario de `archivo2.txt` a `grupo1`.
~~~
~~~


6. Configurar Permisos de Directorio: Cambia los permisos del `directorio1` para que sólo el propietario pueda entrar (permisos `rwx`), el grupo pueda listar contenidos pero no entrar (permisos `r--`), y otros no puedan hacer nada.

~~~
~~~

7. Comprobación de Acceso: Intenta acceder al `archivo1.txt` y `directorio1/archivo2.txt` como `usuario2`. Nota cómo el permiso de directorio afecta el acceso a los archivos dentro de él.

~~~
~~~

8. Verificación Final: Verifica los permisos y propietario de los archivos y directorio nuevamente con `ls -l` y `ls -ld`.
Reflexión: (Opcional)

~~~
~~~

Contestar las siguientes preguntas:

    ¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?
    ¿Qué otros comandos o técnicas conocen para gestionar permisos en Linux?

