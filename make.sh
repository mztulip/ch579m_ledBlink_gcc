#/bin/bash
TOOLCHAIN="/home/tulip/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/bin/arm-none-eabi-"
TOOLCHAIN_GCC=$TOOLCHAIN"gcc"
echo $TOOLCHAIN_GCC

# -c => Compile or assemble the source files, but do not link. 
$TOOLCHAIN_GCC Main.c -I StdPeriphDriver/inc/ -I CMSIS/Include/ -c -o build/main.o