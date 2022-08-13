#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.2/g' package/base-files/files/bin/config_generate

# 删除原来的adbyby
#rm -rf  feeds/extra/luci-app-adbyby-plus

#svn co https://github.com/NueXini/NueXini_Packages/trunk/luci-app-diskman package/luci-app-diskman

#svn co https://github.com/shidahuilang/openwrt-package/trunk/luci-app-autotimeset package/luci-app-autotimeset

#svn co https://github.com/shidahuilang/openwrt-package/trunk/luci-app-adbyby-plus package/luci-app-adbyby-plus



# 删除docker
#rm -rf feeds/extra/luci-lib-docker
#rm -rf feeds/extra/luci-app-docker
#rm -rf feeds/luci/applications/luci-app-dockerman

# 安装Docker
#svn co https://github.com/NueXini/NueXini_Packages/trunk/luci-app-docker package/luci-app-docker

#git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
#git clone https://github.com/lisaac/luci-lib-docker package/luci-lib-docker

# 添加cpu温度监控
git clone https://github.com/AK201314/luci-app-temp-status.git package/luci-app-temp-status
