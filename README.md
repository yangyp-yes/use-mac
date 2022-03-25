# 使用 Mac
> 这里的 Mac 指 macOS

## 命令行还是图形化?
如果要想自动化,那就命令行,如果要想有直观的用户界面,那就图形化,命令行的代表就是 Linux 系统了,图形化的代表就是 Windows 了,但是 macOS 很好的兼容了两者.

## 我是否需要全部安装?
如果你不知道安装一个软件能带来什么?那就不要安装,尽可能使用少的软件.

## 包管理工具 brew
如果你需要安装一些命令行,比如 git node mysql 等等,除了官方下载安装包,你还有另一个选择, [ brew 官网](https://brew.sh/index_zh-cn)

然后试着用它安装个命令试试看,对比其他方式,看看是不是方便了不少

brew 还提供了 cask 版本,比如下载 Google Chrome ,但是图形化的软件还是推荐你用其他方式安装,毕竟对比起来图形化软件安装卸载还是比较方便的

### 安装 nginx
#### 搜索配方

`brew search nginx`

#### 安装
`brew install nginx`
#### 查看 nginx 信息
`brew info nginx`
这个可以查看安装的 nginx 版本,安装路径,已经配置文件路径等等信息,还有启动,所以在你百度 nginx 的用法之前,先查看下是个不错的选择


## iTerm

## Oh My ZSH

## 文本编辑器

## IDE
## 键位更改 Karabiner

> mac 自带的control n/p/f/b 大部分都是可以代替方向键的，但是有些时候还是不能等于方向键的,比如有时候在输入的时候，同时又要上下选择的时候，这时候 Karabiner 就派上用场了

下载 [my-rules](./my-rules.json)到 ~/.config/karabiner/assets/complex_modifications 中，然后到Karabiner-Elements 中 Complex modifications --- add ruler 开启即可

## 快速启动软件
Manico Thor Keyboard Maestro hammerspoon 正在摸索


## 截图软件 Snipaste
特色: 贴图功能

## 窗口切换软件 AltTab
可以配置alt tab 在同一app不同窗口中切换，配置cmd tab 在不同app中切换
## 修改外接显示器亮度和音量 MonitorControl


## scrollreverser 
鼠标滚动方向调整


## mac 飞书无法使用麦克风和摄像头的问题
设备 m1 MacBook pro 系统版本 12.0.1 已关闭 SIP 验证

com.bytedance.macos.feishu 是飞书的app id ，开启制定app 可以在app 里面的 info.plist 的 CFBundleIdentifier 字段

```
sudo sqlite3 ~/Library/Application\ Support/com.apple.TCC/TCC.db "INSERT or REPLACE INTO access VALUES('kTCCServiceMicrophone','com.bytedance.macos.feishu',0,0,4,1,NULL,NULL,0,'UNUSED',NULL,0,1622199671);"

sudo sqlite3 ~/Library/Application\ Support/com.apple.TCC/TCC.db "INSERT or REPLACE INTO access VALUES('kTCCServiceCamera','com.bytedance.macos.feishu',0,2,0,1,NULL,NULL,NULL,'UNUSED',NULL,0,1608354323);"
```
## Mac VPN
设备 m1 MacBook pro 系统版本 12.0.1 已关闭 SIP 验证

软件：
Tunnelblick

配置文件：

```
*.crt   // 放到Tunnelblick 路径
*.key   // 放到Tunnelblick 路径
ca.crt  // 放到Tunnelblick 路径

*.ovpn  //配置文件安装 Tunnelblick 后直接导入就可以
```

Tunnelblick 路径

`~/Library/Application Support/Tunnelblick/Configurations` 


#### 问题 failed to negotiate cipher with server. Add the server's cipher ('BF-CBC') to --data-ciphers (currently 'AES-256-GCM:AES-128-GCM') if you want to connect to this server.
ovpn配置文件里面添加
```
cipher BF-CBC
```

### typec 拓展坞只能 4k 30HZ
用的公司的飞利浦拓展坞 连接HDMI 只能 4K 30HZ 
换用官方拓展坞解决
