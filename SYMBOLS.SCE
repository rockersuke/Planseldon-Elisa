; Base de datos para DAAD V2.40 - 2.42 generada por Triz2DAAD.
;
; Secci¢n de definiciones.
;
; Establece el s¡mbolo ROWS para representar 32 filas (de ventana de texto) en el caso del PCW
; y 25 en todos los dem s.
; 
#IF PCW
 #define ROWS 32
#ELSE
 #define ROWS 25
#ENDIF
;
; Define valores por defecto para la posici¢n de la ventana de texto.
;
#define textrow1 14 ; Posici¢n de la ventana de texto en localidades con gr fico.
#define textrow2 1 ; Posici¢n de la ventana de texto en localidades sin gr fico.
;
; Define posici¢n de la barra de estado.
#define slrow 0
;
; Define valores por defecto para papel y tinta tanto de la ventana de texto como de la barra de estado
;
; Valores para PC.
; Para pruebas en modo s¢lo texto se recomienda usar 7 en vez de 1 (larga historia detr s).
;
#IF PC
 #define bg_colour 0      ; Color de fondo (papel) de la ventana principal de texto.
 #define fg_colour 1      ; Color del texto (tinta) de la ventana principal de texto.
 #define sb_bg_colour 1   ; Color de fondo (papel) de la barra de estado.
 #define sb_fg_colour 0   ; Color del texto (tinta) de la barra de estado.
#ENDIF
;
; Valores para ZX SPECTRUM
;
#IF SPE
 #define bg_colour 0      ; Color de fondo (papel) de la ventana principal de texto.
 #define fg_colour 1      ; Color del texto (tinta) de la ventana principal de texto.
 #define sb_bg_colour 7   ; Color de fondo (papel) de la barra de estado.
 #define sb_fg_colour 5   ; Color del texto (tinta) de la barra de estado.
#ENDIF
;
; Valores para COMMODORE 64
;
#IF CBM64
 #define bg_colour 0      ; Color de fondo (papel) de la ventana principal de texto.
 #define fg_colour 1      ; Color del texto (tinta) de la ventana principal de texto.
 #define sb_bg_colour 7   ; Color de fondo (papel) de la barra de estado.
 #define sb_fg_colour 5   ; Color del texto (tinta) de la barra de estado.
#ENDIF
;
; Valores para AMSTRAD CPC
;
#IF CPC
 #define bg_colour 0      ; Color de fondo (papel) de la ventana principal de texto.
 #define fg_colour 1      ; Color del texto (tinta) de la ventana principal de texto.
 #define sb_bg_colour 1   ; Color de fondo (papel) de la barra de estado.
 #define sb_fg_colour 0   ; Color del texto (tinta) de la barra de estado.
#ENDIF
;
; Valores para MSX
;
#IF MSX
 #define bg_colour 0      ; Color de fondo (papel) de la ventana principal de texto.
 #define fg_colour 1      ; Color del texto (tinta) de la ventana principal de texto.
 #define sb_bg_colour 7   ; Color de fondo (papel) de la barra de estado.
 #define sb_fg_colour 5   ; Color del texto (tinta) de la barra de estado.
#ENDIF
;
; Valores para ATARI ST
;
#IF ST
 #define bg_colour 0      ; Color de fondo (papel) de la ventana principal de texto.
 #define fg_colour 7      ; Color del texto (tinta) de la ventana principal de texto.
 #define sb_bg_colour 7   ; Color de fondo (papel) de la barra de estado.
 #define sb_fg_colour 0   ; Color del texto (tinta) de la barra de estado.
#ENDIF
;
; Valores para AMIGA
;
#IF AMIGA
 #define bg_colour 0      ; Color de fondo (papel) de la ventana principal de texto.
 #define fg_colour 1      ; Color del texto (tinta) de la ventana principal de texto.
 #define sb_bg_colour 1   ; Color de fondo (papel) de la barra de estado.
 #define sb_fg_colour 0   ; Color del texto (tinta) de la barra de estado.
#ENDIF
;
; Valores para PCW
;
#IF PCW
 #define bg_colour 0      ; Color de fondo (papel) de la ventana principal de texto.
 #define fg_colour 1      ; Color del texto (tinta) de la ventana principal de texto.
 #define sb_bg_colour 1   ; Color de fondo (papel) de la barra de estado.
 #define sb_fg_colour 0   ; Color del texto (tinta) de la barra de estado.
#ENDIF
;
#define NOTCREATED 252
#define TRUE 1
#define FALSE 0
;
; Atributos para el sistema.
;
#define WEARABLE  23            ; Objeto actual es ropa.
#define CONTAINER 31            ; Objeto actual es contenedor.
#define LISTED    55            ; Objetos - listados por LISTOBJ etc
#define OA_CLIST  54            ; - Listado continuo
#define OO_CLIST  64
#define TIMEOUT   87            ; If Timeout last frame
#define IA_RBUF   85            ; Input - recall buffer
#define IO_RBUF   32
#define IA_PINP   84            ; - reprint in stream
#define IO_PINP   16
#define IA_CSTR   83            ; - clear stream
#define IO_CSTR   8
#define IA_TAKEY  82            ; - timeout on any key
#define IO_TAKEY  4
#define IA_TMORE  81            ; - timeout on More...
#define IO_TMORE  2
#define IA_TSTAR  80            ; - timeout at start of input
#define IO_TSTAR  1
#define GMODE     247           ; - Gr ficos - disponibles
#define GA_MDRW   246           ; - Dibujo invisible (drawstring)
#define GO_MDRW   64
#define GA_POFF   245           ; - Im genes OFF (drawstring)
#define GO_POFF   32
#define GA_WKEY   244           ; - Espera despu‚s de dibujar (drawstring)
#define GO_WKEY   16
#define GA_CBOR   243           ; - Cambia BORDER (drawstring)
#define GO_CBOR   8
#define MOUSE     240           ; rat¢n disponible (s¢lamente !DRAW)
;
#define O2      152     ; Offset de los atributos del segundo objeto
;
; Banderas del sistema 0 - 63
;
#define Dark      0
#define NOCarr    1
#define Work1     2     ; These are system as we consider the stack such
#define Work2     3
#define Stack    24     ; A small stack (always 2 bytes pushed) 10 pushes
#define EMPTY    23     ; Stack can run from here
#define FULL      3     ; to here - There will be an internal one soon
#define O2Num    25     ; 1st free in system 64
#define O2Con    26     ; Objeto 2 es contenedor.
#define O2Loc    27
#define DarkF    28
#define GFlags   29     ; Esto se prueba mejor usando HASAT GMODE
#define Score    30
#define Turns    31     ; 2 bytes
#define Verb     33
#define Noun1    34
#define Adject1  35
#define Adverb   36
#define MaxCarr  37
#define Player   38
#define O2Att    39     ; Usar banderas 39 y 40 para los atributos de otro objeto.
#define InStream 41
#define Prompt   42
#define Prep     43
#define Noun2    44
#define Adject2  45
#define CPNoun   46
#define CPAdject 47
#define Time     48
#define TIFlags  49
#define DAObjNo  50
#define CONum    51
#define Strength 52
#define OFlags   53
#define COLoc    54
#define COWei    55
#define COCon    56
#define COWR     57
#define COAtt    58
#define Key1     60
#define Key2     61
#define ScMode   62     ; 2=Text, 4=CGA, 13=EGA, 141=VGA
#define CurWin   63     ; Qu‚ ventana est  activa en este momento.
;
; Grupos £tiles.
; 
#define Z80 SPE+MSX+CPC+PCW
#define M6502 CBM64
#define M68000 ST+AMIGA
#define I86 PC
;
