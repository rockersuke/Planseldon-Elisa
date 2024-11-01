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
                TIME 30 0
                CLEAR Prompt
                GOTO 1
                RESTART
                
_       _       AT 4
                DONE

; PRO 5 equivale a la antigua "events table" de Quill o a la "tabla de respeuestas" de PAWS.
; Se le llama desde PRO 1.

; *** Bloqueo movimientos

SALIR   VENTA   PROCESS 17
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

; *** ACCIONES ALFOMBRA ***

_       ALFOM   AT 1
                ZERO 114
                MESSAGE 134
                DONE
                
COGER   ALFOM   AT 1
                NOTZERO 110
                MESSAGE 115
                DONE
                
COGER   ALFOM   AT 1
                MES 116
                MESSAGE 117
                DONE

EMPUJ   ALFOM   AT 1
                ZERO 110
                MES 118
                MESSAGE 117
                DONE
                
EMPUJ   ALFOM   AT 1
                ZERO 111
                SET 111
                MESSAGE 119
                CREATE 2
                DONE

EMPUJ   ALFOM   AT 1
                MESSAGE 49

EX      ALFOM   AT 1
                NOTZERO 112
                MES 121
                MES 122
                MES 124
                SPACE
                MES 112
                MESSAGE 114
                DONE

EX      ALFOM   AT 1
                NOTZERO 111
                MES 121
                MES 123
                MESSAGE 124
                DONE

EX      ALFOM   AT 1
                NOTZERO 110
                MES 112
                MESSAGE 114
                DONE

EX      ALFOM   AT 1
                MES 113
                MESSAGE 117
                DONE

EXTEN   ALFOM   AT 1
                NOTZERO 112
                MESSAGE 49
                DONE

EXTEN   ALFOM   AT 1
                NOTZERO 111
                SET 112
                MES 121
                MES 122
                MESSAGE 124
                DONE
                
EXTEN   ALFOM   AT 1
                MES 118
                MESSAGE 117

ROMPE   ALFOM   AT 1
                MESSAGE 101

SENTA   ALFOM   AT 1
                NOTZERO 113
                MESSAGE 49
                DONE

SENTA   ALFOM   AT 1
                NOTZERO 112
                SET 113
                MESSAGE 131
                DONE
                
SENTA   ALFOM   AT 1
                MESSAGE 132
                
TOCAR   ALFOM   AT 1
                MESSAGE 112

; *** ACCIONES COLCH‡N ***

COGER   COLCH   AT 1
                MESSAGE 12
                DONE

EMPUJ   COLCH   AT 1
                ZERO 110
                SET 110
                SET 114
                MESSAGE 111
                DONE
                
EMPUJ   COLCH   AT 1
                MESSAGE 49

EX      COLCH   AT 1
                ZERO 110
                MES 108
                MES 109
                MESSAGE 110
                SET 114
                DONE
                
EX      COLCH   AT 1
                MES 108
                MESSAGE 110
                SET 114
                DONE

ROMPE   COLCH   AT 1
                MESSAGE 101
                
TOCAR   COLCH   AT 1
                MESSAGE 89

; *** ACCIONES CONJURO ***

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

RECIT   CONJU   ZERO 112
                MESSAGE 125
                DONE
                
RECIT   CONJU   NOTZERO 113
                MESSAGE 128
                ANYKEY
                CLS
                WINDOW 2
                CLS
                MES 137
                WINDOW 1
                MESSAGE 138
                ANYKEY
                CLS
                WINDOW 2
                CLS
                MES 139
                WINDOW 1
                END
                
RECIT   CONJU   MES 127
                MESSAGE 130
                ZERO 101
                LET Turns 97

; *** ACCIONES EXAMINAR ***

EX      BIBLI   AT 2
                MES 44
                MESSAGE 45
                DONE

EX      CANDE   AT 2
                MESSAGE 36
                DONE

EX      CELDA   AT 1
                MESSAGE 4
                DONE

EX      CODIC   AT 2
                MESSAGE 45
                DONE

EX      CRIST   AT 2
                MESSAGE 40
                DONE

EX      DESIE   MESSAGE 41
                DONE

EX      ESPEJ   AT 2
                ZERO 107
                MES 54
                MESSAGE 55
                DONE
                
EX      ESPEJ   AT 2
                MESSAGE 63
                DONE

EX      ESTRE   MESSAGE 7
                DONE

EX      FIGUR   AT 1
                NOTZERO 103
                SET 104
                MESSAGE 47
                DONE

EX      FRASC   AT 2
                MESSAGE 13
                DONE

EX      LAMPA   PRESENT 0
                MESSAGE 2
                DONE
				
EX      LUNA    MESSAGE 6
                DONE

EX      MARCO   AT 2
                ZERO 107
                MESSAGE 76
                DONE
                
EX      MARCO   AT 2
                MESSAGE 77
                DONE

EX      MESA    AT 2
                MESSAGE 13
                DONE

EX      PARED   AT 1
                ZERO 100
                SET 100
                MESSAGE 5
                DONE
				
EX      PARED   MESSAGE 4
                DONE

EX      PERGA   AT 1
                CARRIED 1
                NOUN2 VENTA
                MESSAGE 72
                DONE
                
EX      PERGA   AT 1
                CARRIED 1
                NOUN2 LUNA
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

EX      PASIL   AT 1
                ZERO 105
                NOTDONE
                
EX      PASIL   AT 1
                MESSAGE 51
                DONE
                
EX      PASIL   MESSAGE 64
                DONE

EX      PUERTA  AT 1
                PROCESS 15
                DONE

EX      RELIE   AT 1
                NOTZERO 100
                SET 103
                MESSAGE 46
                DONE

EX      SUELO   AT 2
                NOTZERO 107
                MES 73
                MES 79
                MES 78
                MESSAGE 74
                DONE

EX      SUELO   MES 73
                MES 79
                MESSAGE 78
                DONE

EX      TELA    PRESENT 2
                MESSAGE 43
                SWAP 2 1
                DONE

EX      TECHO   MES 73
                MES 80
                MESSAGE 78
                DONE

EX      TROZO   AT 2
                NOTZERO 107
                ABSENT 3
                MESSAGE 67
                DONE
                
EX      TROZO   PRESENT 3
                MESSAGE 68
                DONE

EX      VENAS   MESSAGE 99
                DONE

EX      VELA    AT 2
                MESSAGE 37
                DONE

EX      VENTA   AT 1
                MESSAGE 3
                DONE
                
EX      VENTA   AT 2
                MESSAGE 40
                DONE

; *** Otras acciones ***

ABRIR   PUERT   PROCESS 16

ABRIR   VENTA   MESSAGE 11

ACERC   PERGA   AT 1
                CARRIED 1
                NOUN2 VENTA
                MESSAGE 72
                DONE

ACERC   PERGA   CARRIED 1
                NOUN2 VENTA
                MESSAGE 81

APAGA   CANDE   AT 2
                MESSAGE 107

APAGA   VELAS   AT 2
                MESSAGE 107

BEBER   FRASC   AT 2
                MES 94
                MES 69
                MESSAGE 59
                SET 109

COGER   CANDE   AT 2
                MESSAGE 57
                DONE

COGER   BIBLI   AT 2
                MESSAGE 12
                DONE

COGER   CODIC   AT 2
                MESSAGE 45
                DONE

COGER   ESPEJ   AT 2
                NOTZERO 107
                MESSAGE 95
                DONE

COGER   ESPEJ   AT 2
                MESSAGE 96
                DONE

COGER   FIGUR   AT 1
                NOTZERO 103
                MESSAGE 9
                DONE

COGER   MESA    AT 2
                MESSAGE 12
                DONE

COGER   FRASC   AT 2
                MESSAGE 13
                DONE

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

COGER   VELA    AT 2
                MESSAGE 37
                DONE

EMPUJ   BIBLI   AT 2
                MESSAGE 12

EMPUJ   CANDE   AT 2
                MESSAGE 57
                
EMPUJ   CODIC   AT 2
                MESSAGE 101

EMPUJ   ESPEJ   AT 2
                PROCESS 18

EMPUJ   FRASC   AT 2
                MESSAGE 101

EMPUJ   LAMPA   PRESENT 0
                MESSAGE 42

EMPUJ   MARCO   AT 2
                PROCESS 18

EMPUJ   MESA    AT 2
                MES 82
                MES 83
                MES 84
                MES 85
                MESSAGE 86

EMPUJ   PUERT   PROCESS 16

EMPUJ   VELAS   AT 2
                MESSAGE 37

ENCEN   LAMPA   PRESENT 0
                MESSAGE 53

FROTA   LAMPA   PRESENT 0
                MESSAGE 42

GRITA   _       MESSAGE 104
                SET 109

LEE     CODIC   AT 2
                MESSAGE 45

LEE     PERGA   AT 1
                CARRIED 1
                NOUN2 VENTA
                MESSAGE 72
                DONE
                
LEE     PERGA   AT 1
                CARRIED 1
                NOUN2 LUNA
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
                
LLORA   _       MES 102
                MESSAGE 103
                SET 109
                
PULSA   FIGUR   AT 1
                NOTZERO 103
                ZERO 105
                MESSAGE 48
                SET 105
                DONE
                
PULSA   FIGUR   AT 1
                NOTZERO 105
                MESSAGE 49

PULSA   ESTRE   AT 1
                NOTZERO 103
                MESSAGE 10

PULSA   RELIE   AT 1
                NOTZERO 103
                MESSAGE 10

QUITAR  VIDA    SYNONYM SUICI _

QUEMA   PERGA   AT 2
                CARRIED 1
                MES 106
                MESSAGE 37
                
QUEMA   TELA    AT 2
                CARRIED 2
                MES 106
                MESSAGE 37

RELAJ   _       MES 120
                MESSAGE 103

ROMPE   CODIC   AT 2
                MESSAGE 101

ROMPE   CRIST   AT 2
                MESSAGE 60

ROMPE   ESPEJ   AT 2
                ZERO 107
                SET 107
                MES 61
                MESSAGE 63
                DONE
                
ROMPE   ESPEJ   AT 2
                MESSAGE 49

ROMPE   FRASC   AT 2
                ZERO 107
                MESSAGE 97
                DONE
                
ROMPE   FRASC   AT 2
                MES 97
                MESSAGE 98

ROMPE   LAMPA   PRESENT 0
                MESSAGE 101

ROMPE   PERGA   PRESENT 1
                MESSAGE 101
                
ROMPE   TELA    PRESENT 2
                MESSAGE 101

ROMPE   VELA    AT 2
                MESSAGE 101

ROMPE   VENTA   AT 2
                MESSAGE 60
                
ROMPE   VENA    CARRIED 3
                MES 69
                MESSAGE 59
                SET 109
                DONE

ROMPE   VENA    SET 109
                MESSAGE 70

SALTA   VACIO   PROCESS 17

SALTA   VENTA   PROCESS 17

SUICI   _       AT 1
                MESSAGE 93
                MESSAGE 92
                SET 109
                DONE

SUICI   _       MESSAGE 93
                MESSAGE 91
                SET 109

TIRAR   VENTA   PROCESS 17
                SET 109

TOCAR   BIBLI   AT 2
                MESSAGE 89

TOCAR   CANDE   AT 2
                MESSAGE 37

TOCAR   CODIC   AT 2
                MESSAGE 89

TOCAR   CRIST   AT 2
                MESSAGE 89

TOCAR   ESPEJ   AT 2
                ZERO 107
                MESSAGE 75
                DONE
                
TOCAR   ESPEJ   AT 2
                MESSAGE 63

TOCAR   FIGUR   AT 1
                NOTZERO 103
                SET 104
                MESSAGE 47
                DONE

TOCAR   FRASC   AT 2
                MESSAGE 89

TOCAR   LAMPA   PRESENT 0
                MESSAGE 42

TOCAR   MARCO   AT 2
                MESSAGE 89

TOCAR   MESA    AT 2
                MESSAGE 89

TOCAR   PARED   AT 1
                ZERO 100
                SET 100
                MESSAGE 5
                DONE

TOCAR   PARED   MESSAGE 4

TOCAR   PERGA   PRESENT 1
                MESSAGE 89

TOCAR   PUERT   AT 1
                MESSAGE 89

TOCAR   SUELO   MESSAGE 89

TOCAR   TECHO   MESSAGE 90

TOCAR   TELA    PRESENT 2
                MESSAGE 89

TOCAR   VELAS   AT 2
                MESSAGE 37

TOCAR   VENAS   MES 100
                MESSAGE 103
                SET 109

TOCAR   VENTA   MESSAGE 89

VACIA   FRASC   MESSAGE 101
                DONE

; Entrada a§adida por Triz2DAAD para pantallas de ayuda.

AYUDA   _       PROCESS 7
                WINDOW 2
                CLS
                MES 18
                WINDOW 1
                MES 19
                MESSAGE 56
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

