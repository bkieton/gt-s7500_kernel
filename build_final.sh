cp ./GT-S7500_Kernel/arch/arm/boot/Image Image

./mkbootfs initramfs | gzip > ramdisk.gz
./mkbootfs initramfs_hc | gzip > ramdisk_hc.gz

./mkbootimg --kernel Image --ramdisk ramdisk.gz --cmdline "console=ttyHSL0,115200,n8 androidboot.hardware=qcom" --base 0x00200000 --pagesize 2048 -o boot.img
tar cvf kernel_blackburner.tar boot.img 
md5sum -t kernel_blackburner.tar >> kernel_blackburner.tar
mv kernel_blackburner.tar kernel_blackburner.tar.md5

./mkbootimg --kernel Image --ramdisk ramdisk_hc.gz --cmdline "console=ttyHSL0,115200,n8 androidboot.hardware=qcom" --base 0x00200000 --pagesize 2048 -o boot.img
tar cvf kernel_blackburner_hc.tar boot.img 
md5sum -t kernel_blackburner_hc.tar >> kernel_blackburner_hc.tar
mv kernel_blackburner_hc.tar kernel_blackburner_hc.tar.md5