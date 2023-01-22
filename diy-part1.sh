#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# 修改默认内核（所有机型都适用，只要您编译的机型源码附带了其他内核，请至编译说明的第12条查看https://github.com/danshui-git/shuoming/blob/master/%E4%BF%AE%E6%94%B9%E5%86%85%E6%A0%B8%E7%89%88%E6%9C%AC.md）
sed -i 's/PATCHVER:=6.1/PATCHVER:=5.15/g' target/linux/x86/Makefile

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
sed -i '$a src-git netspeedtest https://github.com/sirpdboy/netspeedtest.git' feeds.conf.default
sed -i '$a src-git NueXini_Packages https://github.com/NueXini/NueXini_Packages.git' feeds.conf.default
