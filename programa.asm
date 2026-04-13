; programa.asm - Laboratorio Arquitectura UFPS
; Estructura compatible con NASM 16-bit y ALINK

; --- Constantes
TERMINADOR  EQU 24h
CR          EQU 0Dh
LF          EQU 0Ah

section .data
    msg_inicio db "Laboratorio Unidad 4 - NASM", CR, LF, "$"
    msg_byte   db "Valor de var_byte: ", "$"
    msg_fin    db CR, LF, "Proceso terminado.", CR, LF, "$"
    
    var_byte   db 42    ; El asterisco '*' en ASCII
    tabla      db 49, 50, 51, 52, 53 ; Caracteres '1', '2', '3', '4', '5'

section .text
    global main

main:
    ; Configurar el segmento de datos
    mov ax, seg msg_inicio
    mov ds, ax

    ; 1. Imprimir mensaje de inicio (Función 09h)
    mov ah, 09h
    mov dx, msg_inicio
    int 21h

    ; 2. Imprimir etiqueta y variable (Función 02h)
    mov ah, 09h
    mov dx, msg_byte
    int 21h

    mov ah, 02h
    mov dl, [var_byte]
    int 21h

    ; 3. Salto de linea
    mov ah, 02h
    mov dl, CR
    int 21h
    mov dl, LF
    int 21h

    ; 4. Bucle para imprimir tabla (Paso 4 de la guía)
    mov si, tabla
    mov cx, 5

ciclo:
    mov ah, 02h
    mov dl, [si]
    int 21h
    
    ; Imprimir espacio
    mov dl, 20h
    int 21h
    
    inc si
    loop ciclo

    ; 5. Finalizar (Paso 5 de la guía)
    mov ah, 09h
    mov dx, msg_fin
    int 21h

    mov ax, 4C00h
    int 21h