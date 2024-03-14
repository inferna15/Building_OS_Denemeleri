; Çalıştırmak için qemu-system-x86 ve nasm programlarını indir.
; Aşağıdaki komut ile binary oluştur.
; nasm -f bin boot_sect_simple.asm -o boot_sect_simple.bin
; Sonra aşağıdaki komut ile çalıştır.
; qemu-system-x86 boot_sect_simple.bin
; -------------------------------------

; Kapanmaması için sonsuz döngü
loop:
    jmp loop    

; 1 - 510 arasındaki sektörlere 0 yazdır
times 510-($-$$) db 0

; Boot edilebilir olduğunu belirten bitler
; 1010101001010101 - 511. ve 512. sektörler
dw 0xaa55