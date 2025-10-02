#!/bin/bash
# Manual build script for test lavender
# made by rarogcmex
set -e
export ARCH=arm64
# Official ARM Holding GNU toolchain 
#with clang-r383902b ${HOME}/toolchains/clang-r416183b/bin:
export PATH="${HOME}/toolchains/arm-gnu-toolchain-14.3.rel1-x86_64-aarch64-none-linux-gnu/bin:${PATH}"

# Make defconfig
make -j$(nproc) LLVM=1 LLVM_IAS=1 CC=clang CROSS_COMPILE=aarch64-none-linux-gnu- CLANG_TRIPLE=aarch64-none-linux-gnu- mrproper
make -j$(nproc) LLVM=1 LLVM_IAS=1 CC=clang CROSS_COMPILE=aarch64-none-linux-gnu- CLANG_TRIPLE=aarch64-none-linux-gnu- lavender_defconfig
make -j$(nproc) LLVM=1 LLVM_IAS=1 CC=clang CROSS_COMPILE=aarch64-none-linux-gnu- CLANG_TRIPLE=aarch64-none-linux-gnu-


