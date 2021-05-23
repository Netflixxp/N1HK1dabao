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
![固件链接地址](https://github.com/Netflixxp/N1HK1dabao/blob/main/img/sj.png)
* 将固件写入U盘或TF卡 推荐写盘软件 [rufu](https://rufus.ie/zh/)或者[balenaEtcher](balena.io/etcher/)任选其一
* 插入U盘启动盒子，输入192.168.1.99进入后台
* 在系统——TTYD终端——输入用户名root；密码password
* 输入安装命令 `./install-to-emmc.sh`
* 如果显示挂载失败，重新执行上述安装命令`./install-to-emmc.sh`

# N1和HK1在线升级方法
* cd /mnt/mmcblk2p4
* wget 升级脚本下载.sh后缀文件 [点这里跳转](https://github.com/Netflixxp/N1HK1dabao/releases)
![固件链接地址](https://github.com/Netflixxp/N1HK1dabao/blob/main/img/zx.png)
* wget .gz后缀名的固件链接,鼠标右击后缀.gz文件获取链接地址 [点这里跳转](https://github.com/Netflixxp/N1HK1dabao/releases)
* gzip -d 上一步下载的固件全名
* chmod +x *.sh
* ./升级脚本名字 img固件名

# 插件包括
![插件列表](https://github.com/Netflixxp/N1HK1dabao/blob/main/img/lb.png)
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

非54+o版升级到55+o版，如果一直卡在fdisk失败那里的解决办法：一是再多试几次，如果还不成功，则需要手动清空分区表然后再重试，具体命令:
```
  dd   if=/dev/zero   of=/dev/mmcblk2  bs=512  count=1  &&  sync
```

# [购买奈飞正规合租车](https://jcnf.xyz/nf)

# 感激
 * [flippy](https://www.right.com.cn/forum/space-uid-285101.html)
 * [coolsnowwolf/Lede](https://github.com/coolsnowwolf/lede)
 * [mingxiaoyu](https://github.com/mingxiaoyu)
 * [hibuddies](https://github.com/hibuddies/openwrt/)
