# 重要更新
* 2023年10月25日，精力有限，暂停更新，有需求，可以去下载暴躁老哥的 https://github.com/breakings/OpenWrt
* 2021年10月28日，更新了F大最新的打包方式，具体为`固件打包输出路径从tmp改成output了,这样就允许用tmpfs挂载到tmp而不占用太多内存(得自己挂，当系统内存大于4GB时可行，mount -t tmpfs  none  /opt/openwrt_packit/tmp），提高打包速度，减少出错概率。`

* 2021年10月3日，固件升级方式发生一些变化，升级文件改为openwrt-update-amlogic，首先进入目录`cd /mnt/mmcblk2p4` 下载后`chmod +x openwrt-update-amlogic`,之后把固件下载到同一个目录后,执行`./openwrt-update-amlogic`有提示输入`y`为保留配置升级，选`n`相当于重装。升级完成后系统会自动重启，稍安勿躁。

* 2021年6月18日，上游大雕全面更新了最新代码，受影响，60+或60+o版本升级61版本的，建议重新安装，如果不想刷U盘全新安装，也可以用升级脚本升级，只是选择是否保存配置时，选“n”

* 2021年6月6日，加入科学上网常用ipk输出Releases
每日定时更新最新科学上网插件IPK
使用方式：先去Releases下载需要更新的ipk [点我跳转](https://jcnf.xyz/ipk)
软路由后台-系统-软件包-过滤器-查找你要替换的IPK（如passwall，你就搜passwall就行）-移除
下载下面对应的IPK文件， 软路由后台-系统-文件传输-选择本地文件-选择ipk上传-上传文件列表-安装

* 2021年5月24日，同步更新F大佬的快照功能
![增加快照功能](https://cdn.jsdelivr.net/gh/Netflixxp/N1HK1dabao/img/kuazhao.jpg)

使用方法：固件新刷入或采用新版的 update-xxx-openwrt.sh 脚本升级之后就具备了快照功能，工具包名称：由于取名困难，故采用了 flippy 为命令名称（/usr/sbin/flippy)，在ssh或ttyd下输入即可，全程中文菜单，全交互式操作。

# 特别提醒
不要盲目追新，仓库自动打包的固件或插件，均为最新的版本，最新版本意味着有BUG；如果之前固件使用稳定，无需追新。
总结一句话：**追新有风险、更新须谨慎**

# +和+o的版本区别
+的内核版本较新；+o的版本相对+的内核更稳定；f大不太建议N1等盒子使用+的版本，因此比较推荐使用+o的版本。

# 新仓库
为避免别人fork原项目后，随便pull影响原作者，特重开此仓库。
如果你是需要下载固件，那么没有必要fork，因为fork不会同步自动更新的固件。
因此，如果你喜欢我编译的固件，并且想经常关注，你可以
* 点击右上角star，这样你在github里面方便找到此项目
* 用浏览器收藏该项目短网址 https://jcnf.xyz/gj

此项目基于flippy的56+o打包N1和s905X3 （hk1等）的openwrt，为jcnf个人正在使用的固件版本。openwrt来自我自己的另一个项目[N1Openwrt](https://github.com/Netflixxp/op-)

# 默认IP及密码
默认IP 192.168.1.99  密码 password

# N1和HK1全新安装
* 下载对应版本固件
![固件链接地址](https://cdn.jsdelivr.net/gh/Netflixxp/N1HK1dabao/img/sj.png)
* 将固件写入U盘或TF卡 推荐写盘软件 [rufu](https://rufus.ie/zh/)或者[balenaEtcher](balena.io/etcher/)任选其一
* 插入U盘启动盒子，输入192.168.1.99进入后台
* 在系统——TTYD终端——输入用户名root；密码password
* 输入安装命令
`cd root`
`./install-to-emmc.sh`
* 如果显示挂载失败，重新执行上述安装命令`./install-to-emmc.sh`

# N1和HK1在线升级方法
* cd /mnt/mmcblk2p4
* wget 升级脚本为`openwrt-update-amlogic` [点这里跳转](https://github.com/Netflixxp/N1HK1dabao/releases)
* wget .gz后缀名的固件链接,鼠标右击后缀.gz文件获取链接地址 [点这里跳转](https://github.com/Netflixxp/N1HK1dabao/releases)
* gzip -d 上一步下载的固件全名
* chmod + x openwrt-update-amlogic
* `./openwrt-update-amlogic` 之后有提示，输入`y`为保留配置升级，选`n`相当于重装。升级完成后系统会自动重启，稍安勿躁。

# 插件包括
![插件列表](https://cdn.jsdelivr.net/gh/Netflixxp/N1HK1dabao/img/lb1.png)
* SSR-Plus
* passwall
* openclash
* hello word
* Bypass
* Argon主題 
* docker-ce
* AdGuard Home
* 实时监控
* TTYD终端
* 动态DNS
* UPdp
* AdGuard Home
* 网易音乐解锁
* 京东薅羊毛
* Frp
* 无线wifi
* CPU性能调节

# 自动更新说明
固件采用自动编译，Acrions将会在每天监控上游代码是否更新，如passwall ssrp等，一旦检测到上游代码更加将会自动编译打包，于每天上午7时30分发布最新版固件。

# N1新版固件如何刷

[看教程](https://ybfl.xyz/100.html)

# [购买奈飞正规合租车](https://jcnf.xyz/nf)

# [群友众筹公益机场](https://jcnf.xyz/jd)

# 感激
 * [flippy](https://www.right.com.cn/forum/space-uid-285101.html)
 * [coolsnowwolf/Lede](https://github.com/coolsnowwolf/lede)
 * [mingxiaoyu](https://github.com/mingxiaoyu)
 * [hibuddies](https://github.com/hibuddies/openwrt/)

## Stargazers over time

[![Stargazers over time](https://starchart.cc/Netflixxp/N1HK1dabao.svg)](https://starchart.cc/Netflixxp/N1HK1dabao)

