rm -rvf stock
echo -e "Uncpack boot"
./mkboot boot.img stock
newkernel="/home/carlos/android_kernel_samsung_d2"
boot="/home/carlos/android_kernel_samsung_d2/zip/stock"
KERNELT="/home/carlos/android_kernel_samsung_d2/arch/arm/boot/zImage"
zip="/home/carlos/android_kernel_samsung_d2/zip/d2tmo"
cd stock
rm -rvf kernel
mv $KERNELT $boot
mv zImage kernel
echo -e "Packing boot"
cd ..
./mkboot stock newboot.img
rm -rvf boot.img
mv newboot.img boot.img
mv boot.img $zip


