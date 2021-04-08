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

```json
{
  "title": "Ctrl+p/Ctrl+n/Ctrl+f/Ctrl+b to arrow up/down/right/left",
  "rules": [
    {
      "description": "Ctrl+p/Ctrl+n/Ctrl+f/Ctrl+b to arrow up/down/right/left",
      "manipulators": [
        {
          "type": "basic",
          "from": {
            "key_code": "p",
            "modifiers": {
              "mandatory": [
                "control"
              ]
            }
          },
          "to": [
            {
              "key_code": "up_arrow"
            }
          ]
        },
        {
          "type": "basic",
          "from": {
            "key_code": "n",
            "modifiers": {
              "mandatory": [
                "control"
              ]
            }
          },
          "to": [
            {
              "key_code": "down_arrow"
            }
          ]
        },
        {
          "type": "basic",
          "from": {
            "key_code": "b",
            "modifiers": {
              "mandatory": [
                "control"
              ]
            }
          },
          "to": [
            {
              "key_code": "left_arrow"
            }
          ]
        },
        {
          "type": "basic",
          "from": {
            "key_code": "f",
            "modifiers": {
              "mandatory": [
                "control"
              ]
            }
          },
          "to": [
            {
              "key_code": "right_arrow"
            }
          ]
        }
      ]
    }
  ]
}
```

