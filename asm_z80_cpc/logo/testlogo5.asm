org &4000
run &4000
;
ld de,position   ;guarda direccion memoria de position en 'de'
;		 ; esto podria entrar en un loop:
ld a,(de)        ;carga en 'a' registros 'de'
ld l,a           ;carga 'l' de 'a'
ld (posl),a
inc e            ;siguiente posicion
ld a,(de)        ;carga en 'a' registros 'de' 
ld h,a           ;carga en 'h' registro 'a' (***aqui ya hl tiene la direccion***)
push de
;
ld bc,logo_1
ld e,#08
call loopg
;
pop de
inc e
ld a,(de)
ld l,a
ld (posl),a
inc e
ld a,(de)
ld h,a
ld bc,logo_2
ld e,#08
call loopg
jr $
;
loopg:
ld d,#0b
call loop
ld a,h
add a,#08
ld h,a
ld a,(posl)
ld l,a
dec e
jr nz, loopg
ret
;
loop:
   ld a, (bc)
   ld (hl), a
   inc l
   inc c
   dec d
jr nz,loop
ret
;
position:
dw #c000,#c050
pos_de:
dw #0000
logo_1:
db #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
db #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
db #00, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #88, #00
db #33, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #EE, #00
db #33, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #E6, #00
db #FC, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #F1, #88
db #FD, #F5, #FB, #F5, #FE, #FF, #F3, #F3, #FB, #FD, #88
db #FD, #F9, #FB, #FD, #F0, #F8, #F4, #FA, #F1, #F1, #88
logo_2:
db #FD, #F1, #FA, #FD, #F6, #FF, #F4, #FB, #F9, #F1, #88
db #FD, #F9, #FA, #F5, #F2, #F1, #F4, #FA, #F1, #F1, #88
db #FD, #F5, #FA, #F5, #FE, #FF, #F3, #F2, #F1, #F1, #88
db #FC, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #F1, #88
db #33, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #E6, #00
db #33, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #EE, #00
db #00, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #88, #00
db #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
posl:
db #00