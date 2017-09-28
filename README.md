# MYNewProject
新项目架构，基本通用框架，工具类等等

> 1、该篇文章仅仅是对有开发经验的朋友起到提醒、查询作用，很多细节步骤都省略了，包括设置支持最低系统版本，关闭横竖屏，启动页隐藏状态栏等等。

> 2、iOS 11 刚刚发布，很多不确定事件，官方文档还没来得及更新，后续关注下，如果有更新，及时修改该篇文章

> 3、其他自定义分类、封装类还需下载 Demo 查看


### 1. 设置 Icon 和 LaunchImage （不包括 iPad）

##### Icon 命名规范
```
Icon-60@3x.png  // for iPhone 6 plus
```
##### LaunchImage 命名规范
```
// for iPhone X（1125 x 2436） - iPhone X（查阅了官方文档也没有发现命名规范，暂且以此命名）
LaunchImage-812h@3x.png 

// for iPhone 6 plus（1242 x 2208） - Retina HD 5.5（横版将 Portrait 改成 Landscape）
LaunchImage-800-Portrait-736h@3x.png  

// for iPhone 6（750 x 1334） - Retina HD 4.7
LaunchImage-800-667h@2x.png 

// for iPhone 5（640 x 1136） - Retina 4
LaunchImage-700-568h@2x.png  

// for iPhone 4（640 x 960） - 2x
Default@2x.png  
```

> 苹果官方 Icon 和 LaunchImage 命名规范示例太老旧了（Version 6.0，2017-03-27），等更新后再修改成最新标准，包括 iPhone X 相关的命名。进入官方文档（[点击进入](https://developer.apple.com/library/content/samplecode/Icons/Introduction/Intro.html#//apple_ref/doc/uid/DTS40010442-Intro-DontLinkElementID_2)）点击左上角 Download Sample Code 即可下载 Demo


### 2. 消除打印警告
```objc
key : OS_ACTIVITY_MODE    value : disable
```


### 3. Info.plist 权限设置
```objc
// 开启下载
key : NSAppTransportSecurity    value : NSAllowsArbitraryLoads
```

### 4. 设置文件夹







### 5. 添加 pch




