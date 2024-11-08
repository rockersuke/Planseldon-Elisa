/PRO 1

; Llamado desde PRO 0.

; Llama a PRO 4, antiguo proceso 2 del PAWS.

_       _       PROCESS 4

; Recibe y analiza el input del jugador.

_       _       PARSE 0
                PROCESS 2
                REDO

; Entradas para el contador de turnos.

_       _       PLUS Turns 1
                PROCESS 12      

; Actualiza (de nuevo) la barra de estado.

_       _       PROCESS 11

; Llama a PRO 5. Si al volver se ha ejecutado una acci¢n
; continua el bucle del juego recomenzando el PRO 1.

_       _       PROCESS 5
                ISDONE
                REDO

; Si no, trata de mover al jugador. Si lo consigue
; continua el bucle del juego recomenzando el PRO 0.

_       _       MOVE Player
                PROCESS 21
                RESTART

; Si no, mira si el verbo de la SL (sentencia l¢gica) era de movimiento,
; en cuyo caso imprime el mensaje de sistema 7 "no puedes ir en esa direcci¢n" y
; el bucle del juego continua recomenzando PRO 1.

_       _       NEWTEXT
                LT Verb 14
                SYSMESS 7
                REDO

; Y si llega hasta aqu¡, imprime el mesaje de sistema 8 ("no puedes hacer eso") y
; el bucle del juego continua recomenzando PRO 1.

_       _       SYSMESS 8
                REDO

;------------------------------------------------------------------------------
