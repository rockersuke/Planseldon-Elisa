/PRO 0

; PRO 0 es el primer proceso en ejecutarse en DAAD.

; Si estamos en la localidad 0 (inicio del juego)
; llama al proceso de inicializaci¢n (PRO 6).

_       _       AT 0
                PROCESS 6

_       _       CLS

; Establece el flag DarkF en funci¢n del flag Dark y de la
; presencia o no de fuentes de luz (en principio el objeto 0, aunque Triz2DAAD puede cambiar eso).

_       _       CLEAR DarkF
                NOTZERO Dark
                ABSENT 0
                SET DarkF

; Actualiza la barra de estado.

_       _       PROCESS 11

; Si hay un gr fico en la posici¢n correspondiente a la localidad del jugador
; lo carga y, si no est  oscuro, lo dibuja.

;_       _       WINDOW  0
;                PICTURE [Player]
;                DISPLAY [DarkF]

; Pasa a la ventana de texto. Si no hay luz, imprime el mensaje de sistema 0
; "No se ve nada".

_       _       WINDOW 1
                NOTZERO DarkF
                SYSMESS 0

; En caso contario (s¡ hay luz) imprime la descripci¢n correspondiente
; a la localidad actual.

_       _       ZERO DarkF
                DESC [Player]

; Llama al proceso 3.

_       _       PROCESS 3

; Llama al proceso 1.

_       _       PROCESS 1

;------------------------------------------------------------------------------
