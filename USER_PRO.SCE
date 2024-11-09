/PRO 7

; Texto "arriba."

_       _       WINDOW 1
                WINAT textrow2 0
                WINSIZE ROWS 127
                CLS

/PRO 8

; Texto "abajo."

_       _       WINDOW 1
                WINAT textrow1 0
                WINSIZE ROWS 127
                CLS

/PRO 9

; Recoloca la ventana de texto.

_       _       PICTURE [Player]
                PROCESS 8
                DONE

_       _       PROCESS 7

/PRO 10

; Salidas

_       _       AT 1
                MESSAGE 0

_       _       AT 2
                MESSAGE 1

/PRO 11

; Actualiza barra de estado

_       _       WINDOW 2
                CLS

; Si no hay luz, lo indica en la barra de estado y sale del proceso.

_       _       NOTZERO DarkF
                MES 20
                DONE

; Imprime el texto de la localidad en la barra.
; Si a¤ades m s localidades tras el uso de trizbort,
; Puedes poner su texto aqu¡ con una condici¢n del tipo:
; _  _       AT n§ de loc
;            MES XX
; siendo XX el mensaje donde has puesto el texto a poner en la barra.

_       _       AT 1
                MES 16

_       _       AT 2
                MES 17
                
_       _       AT 3
                MES 15
                
_       _       AT 4
                MES 15
                
; Actualiza logros

_       _       ATLT 3
                TAB COLS-13
                MES 171
                PRINT 115
                MES 172

; Retorna a la ventana de texto

_       _       WINDOW 1

/PRO 12

; Finaliza el juego si los turnos son m s de 99 (modo f cil)
; o de 20 (modo dif¡cil)

_       _       ZERO 101
                GT Turns 100
                PROCESS 13
                
_       _       NOTZERO 101
                GT Turns 20
                PROCESS 13
                
/PRO 13

; Mensajes de fin de juego (llega el brujo)

_       _       AT 2
                MES 26
                MES 28
                MES 33
                MES 34
                MES 30
                MESSAGE 31
                END
                
_       _       MES 32
                MES 28
                MES 27
                MES 30
                MESSAGE 31
                END

/PRO 14

; Examinar/leer el pergamino

_       _       AT 1
                MESSAGE 38
                
_       _       AT 2
                MESSAGE 39
                SET 102                

/PRO 15

; Examinar puerta en loc 1

_       _       MES 35
                ZERO 105
                MESSAGE 8
                DONE

_       _       MESSAGE 51

/PRO 16

; Abrir/Empujar puerta en loc 1

_       _       NOTAT 1
                NOTDONE
                
_       _       ZERO 105
                PROCESS 21
                MESSAGE 50
                DONE
                
_       _       MESSAGE 51

/PRO 17

; Salir/Saltar por la ventana en loc. 1

_       _       AT 2
                MESSAGE 62
                DONE

_       _       PROCESS 21
                MES 58
                MESSAGE 59

/PRO 18

; Empuja espejo/marco en loc 2

_       _       ZERO 107
                MES 82
                MES 87
                MES 84
                MESSAGE 86
                DONE
                
_       _       MES 82
                MES 88
                MES 84
                MESSAGE 86

/PRO 19

; Recitar conjuro (literalmente)

_       CONJU   DONE       

_       _       PARSE 1
                NOTDONE

IN      GIRUM   ADJECT1 IMUS
                NOUN2 NOCTE
                ADJECT2 ET
                PREP CONSU
                ADVERB IGNI
                NOTZERO 102
                SYNONYM RECIT CONJU
                DONE

_       _       NOTDONE

/PRO 20

; Mensaje de llevarte el libro al final

_       _       CARRIED 4
                MESSAGE 155

/PRO 21

; Actualiza flag 113 para dejar de estar sentada

_       _       NOTZERO 113
                CLEAR 113
                MESSAGE 164
                NEWLINE
                ANYKEY
                NEWLINE

/PRO 22

; Actualiza logros

_       _       MESSAGE 170
                PLUS 115 1
                PROCESS 11
                SET 109

/PRO 23

; Listado de logros desbloqueados

_       _       MESSAGE 177
                MES 178
                ZERO 116
                MESSAGE 176
                
_       _       NOTZERO 116
                MESSAGE 181

_       _       MES 179
                ZERO 117
                MESSAGE 176
                
_       _       NOTZERO 117
                MESSAGE 182
                
_       _       MES 180
                ZERO 118
                MESSAGE 176
                
_       _       NOTZERO 118
                MESSAGE 183

/PRO 24

; Explicaci¢n de los logros en el fin del juego

_       _       ZERO 115
                DONE
                
_       _       WINDOW 2
                CLS
                MES 177
                WINDOW 1
                
_       _       NOTZERO 116
                MES 184
                MESSAGE 187
                ANYKEY
                CLS

_       _       NOTZERO 117
                MES 185
                MESSAGE 188
                ANYKEY
                CLS
                
_       _       NOTZERO 118
                MES 186
                MESSAGE 189
                ANYKEY
                CLS