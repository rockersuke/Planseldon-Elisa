/PRO 0

; PRO 0 es el primer proceso en ejecutarse en DAAD.

; Si estamos en la localidad 0 (inicio del juego)
; llama al proceso de inicializaci¢n (PRO 6).

_       _       AT 0
                PROCESS 6

; Pasa a la ventana de texto.

_       _       CLS
                WINDOW 1
                DESC [Player]

_       _       PROCESS 3
                PROCESS 1

;------------------------------------------------------------------------------
