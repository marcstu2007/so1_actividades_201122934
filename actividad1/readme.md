# Tipos de Kernel y sus diferencias
## ¿Qué es un kernel?
Es el núcleo de un sistema operativo es la interfaz entre el software y el hardware, controla todas las funciones del sistema operativo, en palabras sencillas es “corazón de un sistema operativo”

## Tipos de Kernel y sus diferencias
### Kernel monolítico:  
Es responsable de la gestión de procesos y memoria, comunicación entre procesos de soporte de drivers y hardware, los sistemas operativos que la usan son Windows, Linux, OS.
### Microkernel: 
Su diseño se basa en modularidad para que su fallo no paralice todo el sistema, pero sus funciones pueden ser equiparables a un kernel grande, el ejemplo el componente Mach de OS X, en este momento no hay ningún sistema operativo con microkernel.
### Kernel híbrido: 
Se refiere a la combinación de kernel monolítico y Microkernel, su fin principal es hacer más compacto y modulable el sistema, para cargarse dinámicamente algunas partes según se necesite, ejemplo Linux y OS X.

## User vs Kernel Mode
### ¿Qué es el modo user?
Es el nivel de privilegio más bajo, al momento de realizar una acción no permitida se te mostrará un error indicando que no tienes privilegios, esto con el fin de no interferir con los procesos críticos del sistema.

### ¿Qué es el kernel mode?
El modo kernel o modo privilegiado tiene acceso irrestricto a todos los procesos y el hardware.

### ¿Por qué usar el mode user y kernel?
Su uso es por que es necesario crear anillos de protección que son mecanismos para proteger los datos y la funcionalidad de fallos y comportamientos maliciosos. 
- Mejora de la tolerancia a fallos
- Proporcionar seguridad informática
