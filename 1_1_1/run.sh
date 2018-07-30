as -o bootsect.o bootsect.s
ld --oformat binary -Ttext=0 -o bootsect bootsect.o
dd if=bootsect of=image bs=512
cp ../bochs/raw.img ../bochs/c.img
dd if=image of=..bochs/c.img bs=512 conv=notrunc
rm -f *.o bootsect image
../../bochs -q -f ../bochs/bochsrc.bxrc
