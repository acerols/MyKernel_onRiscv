run:
	qemu-system-riscv64 -M virt -nographic -kernel my_custom_linux/arch/riscv/boot/Image -append "root=/dev/vda rw console=ttyS0" -drive file=fs/root.bin,format=raw,id=hd0 -device virtio-blk-device,drive=hd0
