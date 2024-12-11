/PRO 5

; Acciones para las localidades de elecci¢n de nivel de dificultad (3 y 4)

_       1       AT 3
                GOTO 4
                DESC 4
                DONE

_       2       AT 3
                SET 101
                GOTO 4
                DESC 4
                DONE
                
_       _       AT 3
                DONE
                
_       1       AT 4
                CLEAR Prompt
                GOTO 1
                RESTART
                
_       2       AT 4
                TIME 20 0
                CLEAR Prompt
                GOTO 1
                RESTART
                
_       _       AT 4
                DONE

; PRO 5 equivale a la antigua "events table" de Quill o a la "tabla de respeuestas" de PAWS.
; Se le llama desde PRO 1.

;
; *** ACCIONES BLOQUEO MOVIMIENTO ***
;

SALIR   VENTA   PROCESS 17
                DONE
                
SALIR   TORRE   MESSAGE 215
                DONE

SALIR   _       AT 1
                ZERO 105
                MESSAGE 50
                DONE
                
LABOR   _       AT 1
                ZERO 105
                MESSAGE 50
                DONE

VOLVE   _       AT 1
                ZERO 106
                MESSAGE 52
                DONE
                
PASIL   _       AT 1
                ZERO 105
                MESSAGE 50
                DONE

; Desambiguaci¢n TROZO

_       TROZO   NOUN2 TELA
                SYNONYM _ TELA
                
_       TROZO   NOUN2 ESPEJ
                SYNONYM _ TROZO
                SKIP 1
                
_       TROZO   MESSAGE 202
                DONE

;
; *** ACCIONES ALFOMBRA ***
;

_       ALFOM   NOTAT 1
                MES 167
                MESSAGE 168
                DONE

_       ALFOM   NOTZERO 120
                MESSAGE 206
                DONE

_       ALFOM   ZERO 114
                MESSAGE 134
                DONE
                
COGER   ALFOM   NOTZERO 110
                MESSAGE 115
                DONE
                
COGER   ALFOM   MES 116
                MESSAGE 117
                DONE

ENROL   ALFOM   SYNONYM EMPUJ ALFOM

MIRAR   ALFOM   PREP BAJO
                ISAT 2 0
                SYNONYM EMPUJ ALFOM
                
MIRAR   ALFOM   PREP BAJO
                MESSAGE 196
                DONE

LEVAN   ALFOM   SYNONYM EMPUJ ALFOM

EMPUJ   ALFOM   PROCESS 21

EMPUJ   ALFOM   ZERO 110
                MES 118
                MESSAGE 117
                DONE
                
EMPUJ   ALFOM   ZERO 111
                SET 111
                MESSAGE 119
                PROCESS 26
                DONE

EMPUJ   ALFOM   MES 194
                MESSAGE 193

EX      ALFOM   ZERO 110
                MES 113
                MESSAGE 117
                DONE

EX      ALFOM   ZERO 111
                MES 121
                MES 122
                MES 124
                SPACE
                
EX      ALFOM   NOTZERO 111
                MES 121
                MES 123
                MES 124
                SPACE

EX      ALFOM   MES 112
                MESSAGE 114
                NOTZERO 113
                MESSAGE 195
                
EX      ALFOM   DONE

EXTEN   ALFOM   ZERO 110
                MES 118
                MESSAGE 117
                DONE

EXTEN   ALFOM   ZERO 111
                MES 194
                MESSAGE 192
                DONE

EXTEN   ALFOM   CLEAR 111
                MES 198
                MESSAGE 124

ROMPE   ALFOM   MESSAGE 101

SENTA   ALFOM   NOTZERO 113
                MESSAGE 49
                DONE

SENTA   ALFOM   ZERO 110
                MES 166
                MESSAGE 117
                DONE

SENTA   ALFOM   NOTZERO 111
                MESSAGE 132
                DONE

SENTA   ALFOM   ZERO 102
                MES 163
                MES 133
                MESSAGE 157
                DONE

SENTA   ALFOM   SET 113
                MESSAGE 131
                
TOCAR   ALFOM   MESSAGE 112
                
TUMBA   ALFOM   MESSAGE 101

;
; *** ACCIONES BARRA ESTADO ***
;

BARRA   _       ZERO 121
                SET 121
                RESTART
                
BARRA   _       CLEAR 121                
                RESTART

;
; *** ACCIONES BIBLIOTECA ***
;

COGER   BIBLI   AT 2
                MESSAGE 12
                DONE

EMPUJ   BIBLI   AT 2
                MESSAGE 12

EX      BIBLI   AT 2
                MES 44
                MESSAGE 45
                DONE

TOCAR   BIBLI   AT 2
                MESSAGE 89

;
; *** ACCIONES CANDELABRO ***
;

APAGA   CANDE   AT 2
                MESSAGE 107

COGER   CANDE   AT 2
                MESSAGE 57
                DONE

EMPUJ   CANDE   AT 2
                MESSAGE 57

EX      CANDE   AT 2
                MESSAGE 36
                DONE

TOCAR   CANDE   AT 2
                MESSAGE 37

;
; *** ACCIONES CELDA ***
;

EX      CELDA   AT 1
                MESSAGE 4
                DONE

;
; *** ACCIONES CODIC ***
;

_       CODIC   PRESENT 4
                SYNONYM _ NECRO

COGER   CODIC   AT 2
                ISAT 4 0
                MES 149
                MESSAGE 150
                PLACE 4 254
                ZERO 117
                SET 117
                PROCESS 22
                DONE

COGER   CODIC   AT 2
                MESSAGE 151
                DONE

EMPUJ   CODIC   AT 2
                MESSAGE 101

EX      CODIC   AT 2
                MESSAGE 45
                DONE

LEE     CODIC   AT 2
                MESSAGE 45

ROMPE   CODIC   AT 2
                MESSAGE 101

TOCAR   CODIC   AT 2
                MESSAGE 89

;
; *** ACCIONES COLCH‡N ***
;

_       COLCH   NOTAT 1
                MES 167
                MESSAGE 169
                DONE

COGER   COLCH   MESSAGE 12
                DONE

EMPUJ   COLCH   ZERO 110
                SET 110
                SET 114
                MESSAGE 111
                DONE
                
EMPUJ   COLCH   MESSAGE 49

EX      COLCH   PREP BAJO
                ZERO 110
                MESSAGE 197
                SET 114
                DONE
                
EX      COLCH   PREP BAJO
                MESSAGE 196
                DONE

EX      COLCH   ZERO 110
                MES 108
                MES 109
                MESSAGE 110
                SET 114
                DONE
                
EX      COLCH   MES 108
                MESSAGE 110
                SET 114
                DONE

ROMPE   COLCH   MESSAGE 101

SUBIR   COLCH   SYNONYM SENTA COLCH

SENTA   COLCH   PROCESS 21
                MES 158
                MES 133
                MESSAGE 157
                DONE

TOCAR   COLCH   PROCESS 21
                MESSAGE 89

TUMBA   COLCH   SYNONYM DORMI _

;
; *** ACCIONES TORRE ***
;

; Es importante que vengan antes de DECIR para evitar choque con el huevo
; de pascua de TORRES

EX      TORRE   PROCESS 21
                MESSAGE 214
                DONE

ESCAP   TORRE   MESSAGE 215
                DONE

QUEMA   TORRE   NOTDONE

SALTA   TORRE   SYNONYM SALTA VENTA
                
;
; *** ACCIONES HUEVO PASCUA ***
;

; Por log°stica es importante que vayan antes de las de DECIR y CONJURO

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
                
;
; *** ACCIONES DECIR y CONJURO ***
;

RECIT   _       PROCESS 19
                ISNDONE
                MESSAGE 136
                DONE

RECIT   CONJU   ZERO 102
                MESSAGE 129
                DONE

RECIT   CONJU   AT 2
                MESSAGE 135
                DONE

RECIT   CONJU   NOTZERO 111
                MESSAGE 125
                DONE
                
RECIT   CONJU   NOTZERO 113
                MESSAGE 128
                PROCESS 20
                ANYKEY
                CLS
                PROCESS 24
                MESSAGE 138
                ANYKEY
                CLS
                END
                
RECIT   CONJU   MES 127
                MESSAGE 130
                SET 120
                ZERO 101
                LET Turns 97

;
; *** ACCIONES CRISTAL ***
;

EX      CRIST   AT 2
                MESSAGE 40
                DONE

ROMPE   CRIST   AT 2
                MESSAGE 60

TOCAR   CRIST   AT 2
                MESSAGE 89

;
; *** ACCIONES DESIERTO ***
;

EX      DESIE   MESSAGE 41
                DONE

;
; *** ACCIONES ESPEJO ***
;

COGER   ESPEJ   AT 2
                NOTZERO 107
                MESSAGE 95
                DONE

COGER   ESPEJ   AT 2
                MESSAGE 96
                DONE

EMPUJ   ESPEJ   AT 2
                PROCESS 18

MIRAT   ESPEJ   AT 2
                SYNONYM EX ESPEJ

EX      ESPEJ   AT 2
                ZERO 107
                CLS
#IF SPE
 ;                 MESSAGE 207
                 WINDOW 0
                 PICTURE 0
                 DISPLAY 0
                 WINDOW 1
                 PRINTAT 17 5
                 ANYKEY
#ENDIF
#IF CPC
                 MESSAGE 207
                 ANYKEY
#ENDIF
#IF PC
                 WINDOW 0
                 CLS
                 PICTURE 14
                 DISPLAY 0
                 PROCESS 11
#ENDIF
#IF M68000
                 WINDOW 0
                 PICTURE 14
                 DISPLAY 0
                 WINDOW 1               
                 PRINTAT 24 0
                 MES 190
                 ANYKEY
#ENDIF
                CLS
                MES 54
                MESSAGE 55
                PROCESS 27
                NEWLINE
                ANYKEY
                RESTART
                
EX      ESPEJ   AT 2
                MESSAGE 63
                DONE

ROMPE   ESPEJ   AT 2
                ZERO 107
                SET 107
                MES 61
                MESSAGE 63
                DONE
                
ROMPE   ESPEJ   AT 2
                MESSAGE 49
                
TOCAR   ESPEJ   AT 2
                ZERO 107
                MESSAGE 75
                DONE
                
TOCAR   ESPEJ   AT 2
                MESSAGE 63

;
; *** ACCIONES ESTRELLA ***
;

_       ESTRE   ADJECT1 DAVID
                SYNONYM _ RELIE

EX      ESTRE   MESSAGE 7
                DONE

PULSA   ESTRE   AT 1
                NOTZERO 103
                PROCESS 21
                MESSAGE 10

;
; *** ACCIONES FIGURA ***
;

COGER   FIGUR   AT 1
                NOTZERO 103
                PROCESS 21
                MESSAGE 9
                DONE

EX      FIGUR   AT 1
                NOTZERO 103
                PROCESS 21
                SET 104
                MESSAGE 47
                DONE

PULSA   FIGUR   AT 1
                NOTZERO 103
                ZERO 105
                PROCESS 21
                MESSAGE 48
                SET 105
                DONE
                
PULSA   FIGUR   AT 1
                NOTZERO 105
                MESSAGE 49

TOCAR   FIGUR   AT 1
                NOTZERO 103
                PROCESS 21
                SET 104
                MESSAGE 47
                DONE

;
; *** ACCIONES FRASCOS ***
;

_       FRASC   NOTAT 2
                NOTDONE

TOMAR   FRASC   SYNONYM BEBER FRASC

BEBER   FRASC   MES 94
                MES 69
                MESSAGE 59
                SET 109

COGER   FRASC   MESSAGE 13
                DONE

EMPUJ   FRASC   MESSAGE 101

EX      FRASC   MESSAGE 13
                DONE

MANIP   FRASC   MESSAGE 13

ROMPE   FRASC   ZERO 107
                MESSAGE 97
                DONE
                
ROMPE   FRASC   MES 97
                MESSAGE 98

TOCAR   FRASC   MESSAGE 89

VACIA   FRASC   MESSAGE 101
                DONE

;
; *** ACCIONES LABORATORIO
;

EX      LABOR   AT 2
                RESTART

;
; *** ACCIONES LAMPARA ***
;

EMPUJ   LAMPA   PRESENT 0
                MESSAGE 42

ENCEN   LAMPA   PRESENT 0
                MESSAGE 53

EX      LAMPA   PRESENT 0
                MESSAGE 2
                DONE

FROTA   LAMPA   PRESENT 0
                MESSAGE 42

ROMPE   LAMPA   PRESENT 0
                MESSAGE 101

TOCAR   LAMPA   PRESENT 0
                MESSAGE 42

;
; *** ACCIONES LUNA ***
;

EX      LUNA    MESSAGE 6
                DONE

;
; *** ACCIONES MARCO ***
;

EMPUJ   MARCO   AT 2
                PROCESS 18

EX      MARCO   AT 2
                ZERO 107
                MESSAGE 76
                DONE
                
EX      MARCO   AT 2
                MESSAGE 77
                DONE

TOCAR   MARCO   AT 2
                MESSAGE 89

;
; *** ACCIONES MESA ***
;

COGER   MESA    AT 2
                MESSAGE 12
                DONE

EMPUJ   MESA    AT 2
                MES 82
                MES 83
                MES 84
                MES 85
                MESSAGE 86

EX      MESA    PREP BAJO
                MESSAGE 196
                DONE

EX      MESA    AT 2
                MESSAGE 13
                DONE

SENTA   MESA    AT 2
                MESSAGE 101
                DONE
                
SUBIR   MESA    AT 2
                MESSAGE 101

TOCAR   MESA    AT 2
                MESSAGE 89

;
; *** ACCIONES NECRONOMICON ***
;

; Como aqu° se puede llegar tras un SYNONYM que alza el flag interno
; de DONE hay que hacer malabarismos con los DONE y NOTDONE

EX      NECRO   PRESENT 4
                MESSAGE 152
                DONE

LEER    NECRO   PRESENT 4
                MES 153
                MESSAGE 154
                DONE

QUEMA   NECRO   CARRIED 4
                AT 2
                SETCO 4
                MES 106
                MESSAGE 37
                DONE

ROMPE   NECRO   PRESENT 4
                MESSAGE 101
                DONE
                
TOCAR   NECRO   PRESENT 4
                MESSAGE 89
                DONE
                
; Salimos de la tabla salvo que la acci¢n sea COGER o DEJAR    
                
_       NECRO   NOTEQ 33 20
                NOTEQ 33 21
                NOTDONE                

;
; *** ACCIONES PARED ***
;

EX      PARED   AT 1
                ZERO 100
                PROCESS 21
                SET 100
                MESSAGE 5
                DONE

EX      PARED   AT 1
                PROCESS 21
                MES 4
                MESSAGE 204
                DONE

EX      PARED   MESSAGE 4
                DONE

TOCAR   PARED   AT 1
                ZERO 100
                PROCESS 21
                SET 100
                MESSAGE 5
                DONE

TOCAR   PARED   PROCESS 21
                MESSAGE 89

;
; *** ACCIONES PASILLO ***
;

EX      PASIL   AT 1
                ZERO 105
                NOTDONE
                
EX      PASIL   AT 1
                MESSAGE 51
                DONE
                
EX      PASIL   MESSAGE 64
                DONE

;
; *** ACCIONES PERGAMINO ***
;

ACERC   PERGA   AT 1
                CARRIED 1
                NOUN2 VENTA
                PROCESS 21
                MESSAGE 72
                DONE

ACERC   PERGA   CARRIED 1
                NOUN2 VENTA
                MESSAGE 81

EX      PERGA   AT 1
                CARRIED 1
                NOUN2 VENTA
                PROCESS 21
                MESSAGE 72
                DONE

EX      PERGA   AT 1
                CARRIED 1
                NOUN2 LUNA
                PROCESS 21
                MESSAGE 72
                DONE

EX      PERGA   CARRIED 1
                NOUN2 VENTA
                MESSAGE 81
                DONE
                
EX      PERGA   CARRIED 1
                NOUN2 LUNA
                MESSAGE 81
                DONE

EX      PERGA   PRESENT 1
                PROCESS 14
                DONE

LEE     PERGA   AT 1
                CARRIED 1
                NOUN2 VENTA
                PROCESS 21
                MESSAGE 72
                DONE
                
LEE     PERGA   AT 1
                CARRIED 1
                NOUN2 LUNA
                PROCESS 21
                MESSAGE 72
                DONE

LEE     PERGA   CARRIED 1
                NOUN2 VENTA
                MESSAGE 81
                DONE
                
LEE     PERGA   CARRIED 1
                NOUN2 LUNA
                MESSAGE 81
                DONE

LEE     PERGA   PRESENT 1
                PROCESS 14

QUEMA   PERGA   AT 2
                CARRIED 1
                SETCO 1
                MES 106
                MESSAGE 37

ROMPE   PERGA   PRESENT 1
                MESSAGE 101

TOCAR   PERGA   PRESENT 1
                MESSAGE 89

;
; *** ACCIONES PUERTA ***
;

ABRIR   PUERT   PROCESS 16

EMPUJ   PUERT   PROCESS 16

EX      PUERT   AT 1
                PROCESS 15
                DONE

TOCAR   PUERT   AT 1
                PROCESS 21
                MESSAGE 89

;
; *** ACCIONES RELIEVE ***
;

; Ojo, aqu° podemos llegar dedsde un SYNONYM con ESTRELLA

_       RELIE   NOTAT 1
                NOTDONE
                
_       RELIE   ZERO 100
                NOTDONE

EX      RELIE   PROCESS 21
                SET 103
                MESSAGE 46
                DONE

PULSA   RELIE   PROCESS 21
                MESSAGE 10
                DONE

TOCAR   RELIE   PROCESS 21
                MESSAGE 89
                DONE

_       RELIE   NOTDONE

;
; *** ACCIONES SUELO ***
;

EX      SUELO   AT 2
                NOTZERO 107
                MES 73
                MES 79
                MES 78
                MES 146
                MESSAGE 74
                DONE

EX      SUELO   AT 2
                MES 73
                MES 79
                MES 78
                MESSAGE 146
                DONE

EX      SUELO   PROCESS 21
                MES 73
                MES 79
                MES 78
                MESSAGE 145
                DONE

TOCAR   SUELO   MESSAGE 89

;
; *** ACCIONES TECHO ***
;

EX      TECHO   AT 1
                PROCESS 21
                MES 73
                MES 80
                MES 78
                MESSAGE 145
                DONE

EX      TECHO   AT 2
                MES 73
                MES 80
                MES 78
                MESSAGE 146
                DONE

TOCAR   TECHO   PROCESS 21
                MESSAGE 90

;
; *** ACCIONES TELA ***
;

EX      TELA    PRESENT 2
                MESSAGE 43
                SWAP 2 1
                DESTROY 2
                DONE

QUEMA   TELA    AT 2
                CARRIED 2
                SETCO 2
                MES 106
                MESSAGE 37

ROMPE   TELA    PRESENT 2
                MESSAGE 101

TOCAR   TELA    PRESENT 2
                MESSAGE 89

_       TELA    NOTEQ 33 20
                NOTEQ 33 21
                NOTDONE

;
; *** ACCIONES TROZO (de espejo) ***
;

COGER   TROZO   AT 2
                NOTZERO 107
                ISAT 3 0
                PLACE 3 254
                MESSAGE 65
                DONE

COGER   TROZO   AT 2
                NOTZERO 107
                ABSENT 3
                MESSAGE 66
                DONE

EX      TROZO   AT 2
                NOTZERO 107
                ABSENT 3
                MESSAGE 67
                DONE
                
EX      TROZO   PRESENT 3
                MESSAGE 68
                DONE

_       TROZO   NOTDONE

;
; *** ACCIONES VELA ***
;

APAGA   VELAS   AT 2
                MESSAGE 107

COGER   VELAS   AT 2
                MESSAGE 37
                DONE

EMPUJ   VELAS   AT 2
                MESSAGE 37

EX      VELAS   AT 2
                MESSAGE 37
                DONE

ROMPE   VELAS   AT 2
                MESSAGE 101

TOCAR   VELAS   AT 2
                MESSAGE 37

;
; *** ACCIONES VENAS ***
;

EX      VENAS   MESSAGE 99
                DONE

ROMPE   VENAS   CARRIED 3
                MES 69
                MESSAGE 59
                SET 109
                DONE

ROMPE   VENAS   SET 109
                MESSAGE 70

TOCAR   VENAS   MES 100
                MESSAGE 103
                SET 109

;
; *** ACCIONES VENTANA ***
;

ABRIR   VENTA   MESSAGE 11

ASOMA   VENTA   AT 1
                PROCESS 21
                MES 147
                MESSAGE 148

EX      VENTA   AT 1
                MESSAGE 3
                DONE
                
EX      VENTA   AT 2
                MESSAGE 40
                DONE

ROMPE   VENTA   AT 2
                MESSAGE 60
                
SALTA   VENTA   PROCESS 21
                PROCESS 17
                SET 109
                DONE

TIRAR   VENTA   PROCESS 21
                PROCESS 17
                SET 109

TOCAR   VENTA   PROCESS 21
                MESSAGE 89

;
; *** OTRAS ACCIONES ***
;

CANTA   _       ZERO 116
                MESSAGE 173
                DONE
                
CANTA   _       MES 174
                MESSAGE 175
                SET 109
                ZERO 118
                SET 118
                PROCESS 22

DORMI   _       AT 1
                MESSAGE 159
                DONE
                
DORMI   _       MESSAGE 160

ESCAP   _       MESSAGE 215
                DONE

ESCUC   _       MESSAGE 208    
                SET 109

ESPER   _       MES 203
                MESSAGE 103
                DONE

GRITA   _       MESSAGE 104
                SET 109

LEVAN   _       EQ 34 255
                SYNONYM PONER PIE

LLORA   _       MES 102
                MESSAGE 103
                SET 109
                
LOGRO   _       PROCESS 23


; Ojo! A "PONTE DE PIE" se puede llegar con un SYNONYM

PONER   PIE     NOTZERO 113
                CLEAR 113
                MESSAGE 164
                DONE
                
;PONER   PIE     MESSAGE 165
;                DONE

PONER    PIE    NOTDONE

QUITAR  VIDA    SYNONYM SUICI _

RELAJ   _       MES 120
                MESSAGE 103

SENTAR  _       EQ 34 255
                MESSAGE 161

SALTA   VACIO   PROCESS 17
                DONE

SALTA   _       MESSAGE 101

SUICI   _       AT 1
                MESSAGE 93
                MESSAGE 92
                SET 109
                DONE

SUICI   _       MESSAGE 93
                MESSAGE 91
                SET 109

; Entrada a§adida por Triz2DAAD para pantallas de ayuda.

AYUDA   _       WINDOW 1
                WINAT 0 0
                CLS
                MESSAGE 18
                MES 19
                MESSAGE 56
                MESSAGE 205
                ANYKEY
                RESTART

EXAMI   _       WHATO
                NOTEQ 51 255
                PRESENT [51]
                HASAT CONTAINER
                SYSMESS 64
                LISTAT [51]
                DONE

EXAMI   _       WHATO
                NOTEQ 51 255
                PRESENT [51]
                SYSMESS 63
                DONE

EXAMI   _       NOTDONE

SALID   _       PROCESS 10
                DONE

VACIA   _       WHATO
                NOTEQ 51 255
                PRESENT [51]
                HASAT CONTAINER
                COPYFF Noun1 Noun2
                SYNONYM SACAR TODO

VACIA   _       NOTDONE


I       _       SYSMESS 9
                LISTAT CARRIED
                DONE

COGER   TODO    DOALL HERE
COGER   _       AUTOG
                DONE

DEJAR   TODO    DOALL CARRIED
DEJAR   _       AUTOD
                DONE

QUITAR  TODO    DOALL WORN
QUITAR  _       AUTOR
                DONE

PONER   TODO    DOALL CARRIED
PONER   _       AUTOW
                DONE

R       _       EQ 34 255
                RESTART

R       _       LET 33 30
                REDO

FIN     _       QUIT
                END

FIN     _       DONE

SAVE    _       SAVE 0
                RESTART

LOAD    _       LOAD 0
                RESTART

RAMSA   _       RAMSAVE
                RESTART

RAMLO   _       RAMLOAD 255
                RESTART

