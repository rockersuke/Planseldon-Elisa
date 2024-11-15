/PRO 6

; Proceso de inicializaci¢n.
; Llamado desde PRO 0.

; Crea la ventana de la barra de estado.

_       _       WINDOW 2
                WINAT slrow 0
                WINSIZE 1 COLS

_       _       LT GFlags 128
                WINSIZE 1 80

_       _       PAPER bg_colour
                INK fg_colour
                CLS
                PAPER sb_bg_colour
                INK sb_fg_colour

; -Colores de papel-tinta iniciales.
; -Recoloca las ventanas de texto y gr ficos.

_       _       WINDOW 1
                PAPER bg_colour
                INK fg_colour
                CLS
                PROCESS 9

; -Describe localidad 0 (normalmente pantalla de presentaci¢n).
; -Muestra texto de introducci¢n.
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
                set 105
                set 102
                set 116
                set 117
                set 118
                set 119
                let 115 4
                LET Prompt 11
                GOTO 3

