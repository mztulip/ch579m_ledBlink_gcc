#/bin/bash
TOOLCHAIN="/home/tulip/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/bin/arm-none-eabi-"
TOOLCHAIN_GCC=$TOOLCHAIN"gcc"
echo $TOOLCHAIN_GCC

# -c => Compile or assemble the source files, but do not link. 
# -fdata-sections
#-ffunction-sections => Place each function or data item into its own section in the output file if the target supports arbitrary sections. The name of the function or the name of the data item determines the section’s name in the output file. 
GCC_OPTIONS="-c -ffunction-sections -fdata-sections"
INLCUDES="-I StdPeriphDriver/inc/ -I CMSIS/Include/"

file1="$TOOLCHAIN_GCC Main.c $INLCUDES -o build/main.o $GCC_OPTIONS"
echo $file1
$file1

file2="$TOOLCHAIN_GCC StdPeriphDriver/CH57x_sys.c $INLCUDES -o build/CH57x_sys.o $GCC_OPTIONS"
echo $file2
$file2