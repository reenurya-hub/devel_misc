;;sirve para mas de dos posiciones de logo
;;testlog9_0.asm ok ok ok okokok segunda forma
.cls 	equ &BC14	;; Clear screen
org &4000
run &4000
;
call cls		;; clear screen
ld hl, #c020
ld a,#07
call loopgg
jr $
;
loopgg:
   ld bc,logo_1
   ld e,#08
   call loopg
   ld de, #c050
   add hl,de
   ld e,#08
   call loopg
   ld de, #c050
   add hl,de
   dec a
jr nz, loopgg
ret
;
loopg:
   ld d,#0b
   call loop
   push bc
   ld bc,#07f5 ;;800 next row - 0b last column
   add hl,bc
   pop bc 
   dec e
jr nz, loopg
ret
;
loop:
   push af
   ld a, (bc)
   ld (hl), a
   pop af
   inc l
   inc c
   dec d
jr nz,loop
ret
;
logo_1:
db #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
db #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
db #00, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #88, #00
db #33, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #EE, #00
db #33, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #E6, #00
db #FC, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #F1, #88
db #FD, #F5, #FB, #F5, #FE, #FF, #F3, #F3, #FB, #FD, #88
db #FD, #F9, #FB, #FD, #F0, #F8, #F4, #FA, #F1, #F1, #88
db #FD, #F1, #FA, #FD, #F6, #FF, #F4, #FB, #F9, #F1, #88
db #FD, #F9, #FA, #F5, #F2, #F1, #F4, #FA, #F1, #F1, #88
db #FD, #F5, #FA, #F5, #FE, #FF, #F3, #F2, #F1, #F1, #88
db #FC, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #F1, #88
db #33, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #F0, #E6, #00
db #33, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #EE, #00
db #00, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #88, #00
db #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
ret
