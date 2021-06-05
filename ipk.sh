#!/bin/bash

svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
pushd package/luci-app-openclash/tools/po2lmo
make && sudo make install
popd
svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/luci-app-ssr-plus
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall package/luci-app-passwall
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
git clone https://github.com/garypang13/luci-app-bypass package/luci-app-bypass
find package/luci-app-bypass/* -maxdepth 8 -path "*" | xargs -i sed -i 's/smartdns-le/smartdns/g' {}

svn co https://github.com/xiaorouji/openwrt-passwall/trunk/brook package/brook
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/chinadns-ng package/chinadns-ng
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/tcping package/tcping
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-go package/trojan-go
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-plus package/trojan-plus
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/ssocks package/ssocks
svn co https://github.com/fw876/helloworld/trunk/xray-core package/xray-core
svn co https://github.com/fw876/helloworld/trunk/xray-plugin package/xray-plugin
svn co https://github.com/fw876/helloworld/trunk/naiveproxy package/naiveproxy
svn co https://github.com/fw876/helloworld/trunk/shadowsocks-rust package/shadowsocks-rust
svn co https://github.com/fw876/helloworld/trunk/v2ray-plugin package/v2ray-plugin
svn co https://github.com/fw876/helloworld/trunk/shadowsocksr-libev package/shadowsocksr-libev
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb

sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=@TARGET_armvirt_64/g' package/lean/luci-app-cpufreq/Makefile
cat package/lean/luci-app-cpufreq/Makefile
sed -i 's/entry({"admin", "services", "cpufreq"}, cbi("cpufreq"), _("CPU Freq"), 900).dependent = false/entry({"admin", "system", "cpufreq"}, cbi("cpufreq"), _("CPU Freq"), 9).dependent = false/g' package/lean/luci-app-cpufreq/luasrc/controller/cpufreq.lua
cat package/lean/luci-app-cpufreq/luasrc/controller/cpufreq.lua

./scripts/feeds update -a
./scripts/feeds install -a