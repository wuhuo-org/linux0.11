as -o bootsect.o bootsect.s
as -o setup.o setup.s

ld --oformat binary -o bootsect bootsect.o
ld --oformat binary -Ttext=0 -o setup setup.o

dd if=bootsect of=image bs=512
dd if=setup of=image bs=512 seek=1

cp image ../

rm -f *.o bootsect setup system image
