# mora-tamayo-post1-u4

Creacion de un programa de 16 bits en entorno DOS, aplicando directivas de sección y manejo de interrupciones.



\## Descripción

Laboratorio 1 de la Unidad 4: Primer programa NASM con segmentos y

salida DOS.



\# Laboratorio Post-Instalación: Unidad 4 - NASM



\## Descripción

Este proyecto consiste en el desarrollo de un programa en lenguaje ensamblador de 16 bits utilizando el compilador \*\*NASM\*\*. El objetivo es demostrar el dominio de las directivas de sección (`.data`, `.bss`, `.text`), la definición de constantes, el manejo de variables y la ejecución de bucles mediante interrupciones de DOS (\*\*INT 21h\*\*).



\## Estructura del Código

El programa realiza las siguientes acciones:

1\.  \*\*Inicialización:\*\* Configura el segmento de datos (`DS`).

2\.  \*\*Salida de Datos:\*\* Utiliza la función `09h` para imprimir cadenas de texto (Bienvenida y Separadores).

3\.  \*\*Manipulación de Variables:\*\* Muestra el valor de una variable de tipo byte convertida a ASCII.

4\.  \*\*Bucle (Loop):\*\* Recorre una tabla de valores numéricos e imprime cada uno en pantalla usando la función `02h`.

5\.  \*\*Finalización:\*\* Devuelve el control al sistema operativo mediante la función `4Ch`.



\## Herramientas Utilizadas

\* \*\*DOSBox 0.74-3:\*\* Emulador de entorno DOS de 16 bits.

\* \*\*NASM (Netwide Assembler):\*\* Compilador para generar archivos objeto (`.obj`).

\* \*\*ALINK:\*\* Enlazador para crear el ejecutable final (`.exe`).

\* \*\*CWSDPMI:\*\* Servidor de memoria DPMI necesario para la ejecución del enlazador.



\## Instrucciones de Compilación y Ejecución

Para replicar el programa en un entorno DOSBox, ejecute los siguientes comandos:



1\.  \*\*Ensamblado:\*\*

&#x20;   ```bash

&#x20;   nasm -f obj programa.asm -o programa.obj

&#x20;   ```

2\.  \*\*Enlazado (Linkeo):\*\*

&#x20;   \*(Asegúrese de ejecutar `cwsdpmi` antes si el sistema lo requiere)\*

&#x20;   ```bash

&#x20;   alink programa.obj -oEXE -o programa.exe -entry main

&#x20;   ```

3\.  \*\*Ejecución:\*\*

&#x20;   ```bash

&#x20;   programa.exe

&#x20;   ```

\## Autor

Endeer Jesus Mora Tamayo  

Código: 1152476

Arquitectura de Computadores - UFPS

