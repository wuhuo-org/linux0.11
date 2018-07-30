as -o bootsect.o bootsect.s
as -o setup.o setup.s
ld --oformat binary -o bootsect bootsect.o
ld --oformat binary -Ttext=0 -o setup setup.o
dd if=bootsect of=image bs=512
dd if=setup of=image bs=512 seek=1
cp ../bochs/raw.img ../bochs/c.img
dd if=image of=../bochs/c.img bs=512 conv=notrunc
rm -f *.o bootsect setup system image
../../bochs -q -f ../bochs/bochsrc.bxrc
