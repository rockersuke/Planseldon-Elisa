/PRO 0

; PRO 0 es el primer proceso en ejecutarse en DAAD.

; Si estamos en la localidad 0 (inicio del juego)
; llama al proceso de inicialización (PRO 6).

_       _       AT 0
                PROCESS 6

_       _       NOTZERO 121
                PROCESS 7
                WINDOW 1
                WINAT 1 0
                
_       _       ZERO 121
                WINDOW 1
                WINAT 0 0

_       _       CLS
                WINDOW 1
                DESC [Player]

_       _       PROCESS 3
                PROCESS 1

;------------------------------------------------------------------------------
