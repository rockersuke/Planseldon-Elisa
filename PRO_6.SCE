/PRO 6

; Proceso de inicialización.
; Llamado desde PRO 0.

; Pantalla de presentación AMIGA-ST

#IF M68000
 
 _       _       WINDOW 0
                 PICTURE 15
                 DISPLAY 0
                 PROCESS 11
                 PICTURE 16
                 DISPLAY 0
                 PROCESS 11
                 CLS
                 
#ENDIF

; -Colores de papel-tinta iniciales.

_       _       WINDOW 2
                PAPER sb_bg_colour
                INK sb_fg_colour
                WINAT 0 0
                WINSIZE 1 127

_       _       WINDOW 1
                PAPER bg_colour
                INK fg_colour
                WINAT 0 0
                WINSIZE ROWS 127
                CLS

; -Describe localidad 0 (normalmente pantalla de presentación).
; -Muestra texto de introducción.
; -Comienza el bucle de reseteo de banderas.

_       _       DESC 0
                ANYKEY
                CLS
                MESSAGE 14
                MESSAGE 22
                MES 23
                MESSAGE 25
                MES 24
                MESSAGE 71
                ANYKEY
                SET 255

; Pone a 0 todas las banderas excepto la 29 (GFlags).

_       _       MINUS 255 1
                NOTEQ 255 GFlags
                CLEAR [255]

_       _       NOTZERO 255
                SKIP -2

; -Pone las localidades de los objetos a su valor original (establecido en /OBJ).
; -Valores por defecto de las banderas 52, 37, 46, 47 y 53.
; -Establece la localidad inicial.

_       _       RESET
                LET Strength 10
                LET MaxCarr 4
                SET CPNoun
                SET CPAdject
                LET OFlags 64
                LET Prompt 11
                GOTO 3

