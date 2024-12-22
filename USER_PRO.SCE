/PRO 7

_       _       ZERO 121
                DONE

_       _       WINDOW 2
                CLS

_       _       AT 1
                MES 216
                
_       _       AT 2
                MES 217
                
_       _       TAB COLS-12
                MES 218
                MES 171
                PRINT 115
                MES 172
                WINDOW 1
                

/PRO 8

; Sin usar en esta aventura.

/PRO 9

; Sin usar en esta aventura.

/PRO 10

; Salidas

_       _       AT 1
                MESSAGE 0

_       _       AT 2
                MESSAGE 1

/PRO 11

; Espera tecla tras pantalla de carga

$bucle

_       _       INKEY
                DONE
                
_       _       SKIP $bucle

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
                SET 109

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

; Acciones DECIR y Recitar conjuro (literalmente)

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

_       CAAD    MESSAGE 142
                DONE

_       DAAD    MESSAGE 207
                DONE

_       PLANS   MESSAGE 141
                DONE

_       ROCKE   MESSAGE 140
                DONE

_       XYZZY   PROCESS 25
                DONE
                
_       LIZZY   MESSAGE 209
                DONE

_       IGNAC   MESSAGE 210
                DONE
                
_       JUAN    MESSAGE 211
                DONE

_       AMADO   MESSAGE 212
                DONE

_       NANDO   MESSAGE 213
                DONE

_       RUBER   MESSAGE 212
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
;                NEWLINE

/PRO 22

; Actualiza logros

_       _       MES 170
                PLUS 115 1
                PROCESS 28
                PROCESS 7
                SET 109

/PRO 23

; Listado de logros desbloqueados

_       _       MES 177
                PROCESS 28
                NEWLINE
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
                
_       _       MES 201
                ZERO 119
                MESSAGE 176
                
_       _       NOTZERO 119
                MESSAGE 200

/PRO 24

; Explicaci¢n de los logros en el fin del juego

_       _       ZERO 115
                DONE
                
_       _       CLS
                NOTZERO 116
                SPACE
                PROCESS 29
                MES 184
                MESSAGE 187
                ANYKEY
                CLS

_       _       NOTZERO 117
                SPACE
                PROCESS 29
                MES 185
                MESSAGE 188
                ANYKEY
                CLS
                
_       _       NOTZERO 118
                SPACE
                PROCESS 29
                MES 186
                MESSAGE 189
                ANYKEY
                CLS
                
_       _       NOTZERO 119
                SPACE
                PROCESS 29
                MESSAGE 199
                ANYKEY
                CLS

/PRO 25

; XYZZY

_       _       MES 143
                MESSAGE 144
                SET 109
                ZERO 116
                SET 116
                PROCESS 22

/PRO 26

; Hace aparecer la tela

_       _       ISAT 2 0
                MESSAGE 191
                CREATE 2

/PRO 27

; Logro mirar espejo

_       _       ZERO 119
                SET 119
                PROCESS 22

/PRO 28

; cantidad de logros (X/4)

_       _       MES 171
                PRINT 115
                MESSAGE 172

/PRO 29

; Mensaje de logros

_       _       MES 177
                PROCESS 28
                NEWLINE

/PRO 30

; Parche

_       _       ZERO 121
                WINAT 0 0
                DONE

_       _       WINAT 1 0
