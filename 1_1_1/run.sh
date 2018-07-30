as -o bootsect.o bootsect.s
ld --oformat binary -Ttext=0 -o bootsect bootsect.o
dd if=bootsect of=image bs=512
cp image ../
rm -f *.o bootsect image
../../bochs -q -f ../bochsrc.bxrc
