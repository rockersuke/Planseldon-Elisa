/PRO 4

; PRO 4 equivale a la antigua "status table" de Quill o al antiguo "process 2" en PAWS.
; Se le llama desde PRO 1.
; Se ejecuta justo antes de que el parser pida una nueva ¢rden o sentencia l¢gica

; Se levanta de la alfombra

_       _       AT 1
                NOTZERO 113
                NOTEQ 33 57
                CLEAR 113
                NEWLINE
                MES 133
                MESSAGE 156
                DONE

; Mensajes de ambientaci¢n, con la probabilidad de una vez cada 5 tuirnos

; Mensajes de ambiente bloqueados en loc 3 y 4 (pantalla nivel dificultad)

_       _       ATGT 2
                DONE

; Mensajes de ambiente bloqueados si la acci¢n lo ha decidido as¡ (flag 109)

_       _       NOTZERO 109
                CLEAR 109
                DONE

; Probabilidad del 10% - TODO: afinar la probabilidad

_       _       CHANCE 90
                DONE
                
_       _       NEWLINE
                RANDOM 108

; LLorar

_       _       GT 108 80
                MES 102
                MESSAGE 103
                DONE

; Gritar

_       _       GT 108 60
                MESSAGE 104
                DONE

; Tocar mu¤ecas

_       _       GT 108 40
                MES 100
                MESSAGE 103
                DONE
                
; Suicidio

_       _       GT 108 20
                MES 69
                MESSAGE 105
                DONE

; Escuchar

_       _       MESSAGE 208
