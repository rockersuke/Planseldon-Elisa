/PRO 2

; Llamado desde PRO 1.

_       _       HASAT TIMEOUT
                SYSMESS 35
                PLUS Turns 1
                PROCESS 12
                DONE

; Para que no salga el mensaje de sistema 6 en las localidades 3 y 4

_       _       AT 3
                DONE
                
_       _       AT 4
                DONE

; Mensaje de sistema 6 "No entiendo"

_       _       SYSMESS 6

;------------------------------------------------------------------------------
