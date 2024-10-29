/PRO 3

; PRO 3 es el antiguo "process 1" de PAWS.
; Se le llama desde PRO 0.
; Se ejecuta justo despu‚s de la descripci¢n de la localidad.

_       _       AT 1
                MESSAGE 21

_       _       AT 2
                SET 106
                MESSAGE 20

; Listado de objetos (si no est  oscuro).

_       _       NEWLINE
                ZERO DarkF
                LISTOBJ

;------------------------------------------------------------------------------
