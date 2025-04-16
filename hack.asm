.computesmschecksum

.memorymap
slotsize $4000
slot 0 $0000
slot 1 $4000
slot 2 $8000
defaultslot 0
.endme

.rombankmap
bankstotal 8
banksize $4000
banks 8
.endro

.background "alexkidd.sms"

; skip rock-paper-scissors fights entirely
.bank 1 slot 1
.orga $717c
        call    my_code
.orga $7fc0
my_code:
        inc     [ix+$1a]
        inc     [ix+$1a]
        ret

; make doors appear immediately in rock-paper-scissors fight rooms
.bank 2 slot 2
; room 1
.orga $b7ec
        .db     $44
; room 2
.orga $b99e
        .db     $44
; room 3
.orga $bb18
        .db     $44
; room 4
.orga $bca6
        .db     $44
; room 5
.orga $bb2c
        .db     $44
; room 6
.orga $bbfb
        .db     $44
; room 7
.orga $bd96
        .db     $44
