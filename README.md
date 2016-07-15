# TAC Workshop 20160715

## 文件说明

1. SingleViewDemo

	实现内容：
	
	* 单页应用，主要功能是点击button，根据textField的输入内容修改上面的Label显示内容
	
	涉及知识点：
	
	* Storyboard入门与简单使用
	* UIButton的连接（Action和Outlet的不同）与设置
	* UITextField，UILabel连接与设置

2. TableViewDemo

	实现内容：
	
	* TableView与Tabbar结合起来的的简单应用，只实现了最后一个tab，主要功能是点击tab右上角加载不一样的tableviewcell
	
	涉及知识点：
	
	* Tabbar的使用、Tabbar Item图标与名称的设置
	* NavigationBar的基本概念、两种不同使用方式、Title的设置
	* TableViewController的概念、Cell的概念等（参考本文最后tableview的知识点部分）
	* MVC的简单介绍
	* optional语法的简单介绍

3. CocoaPodsDemo
	
	实现内容：
	
	* 与2相同，tableview没有2中那么复杂，但是在2的基础上加入了一个tabbar的动画第三方库
	
	涉及知识点：
	
	* CocoaPods的安装与使用
	* 其他同2

4. UIDesign_Demo.sketch

	用于倒出图片、对2中的Demo进行UI的支撑（也可以学习一下）

## Sketch to Xcode

首先，我收回任何程序员都可以做UI这句话（挥手），不然要设计师干嘛呢（＝。＝）

不过原生UI还是不会骗人的，而今天的重点是实现一些简单的自定义UI

先欣赏一下iOS原生的一些应用，并介绍相关的UI元素

## CocoaPods

### 1. 介绍

**什么是CocoaPods？**

CocoaPods是一个为Swift和OC项目建立的 *依赖包管理器*。

（原句：CocoaPods is a dependency manager for Swift and Objective-C Cocoa projects.）

**为什么要用CocoaPods？**

开发iOS应用时，有很多别人造好的“轮子”，即第三方开源的类库，而我们如果站在“巨人的肩膀上”，即使用这些第三方开源类库，能大大提高开发的效率。

一些著名的类库：

* SwiftyJSON
* AFNetWorking/Alamofire
* JSQMessagesViewController
* SnapKit
* vapor

而这些类库中有很多类型，例如网络库、UI库、工具类库等。

并且某个类库可能会依赖于其他类库，所以CocoaPods是帮助我们管理我们所需要的类库的工具。

它还有一种替代方法：添加framework至项目中，不过作为一个iOS程序员，如果你Github上练Cocoapods库都没有star的话，哈哈哈哈……

### 2. 下载与安装方式

Mac下自带ruby环境，所以我们直接开始下载cocoapods：

```
$ sudo gem install cocoapods
```

而鉴于我们在天朝的特色社会主义道路下，你会发现……它完全没有反应……

别怕，淘宝的Ruby镜像可以来访问cocoapods。按照下面的顺序在终端中敲入依次敲入命令即可：

```
$ gem sources --remove https://rubygems.org/
// 等有反应之后再敲入以下命令

$ gem sources -a http://ruby.taobao.org/
```

这时我们验证一下Ruby镜像是并且仅是taobao，可以用以下命令查看：

```
$ gem sources -l
```

这时候Terminal里会出现下面的字样，就代表成功了：

```
*** CURRENT SOURCES ***
http://ruby.taobao.org/
```

这时候再运行最前面那条指令，需要等待很长时间，然后会显示装好啦～我们就可以使用了～

### 3. 使用方法

首先cd到你的项目根目录下，然后执行下面的命令

```
$ pod init 
$ vi Podfile   // 或者open Podfile…或者直接打开……
```

然后你就可以输入你想要添加的第三方库了，这里我们使用两个第三方的库：

* [LTNavigationBar](https://github.com/ltebean/LTNavigationBar)
* [RAMAnimatedTabBarController](https://github.com/Ramotion/animated-tab-bar)

在Podfile中输入下面的内容：

```
pod 'LTNavigationBar', '~> 2.1.2'
pod 'RAMAnimatedTabBarController'
```

然后执行这条指令:（install后面的内容可以不加）

```
$ pod install --no-repo-update --verbose
```

然后等待完成就好了，依然会很久……

然后我们就可以开始愉快地使用第三方库了！只要在你要使用的地方前加入例如```# import RAMAnimatedTabBarController```的字样就可以了，这里我们没有使用到import，因为这个UI库可以全部使用storyboard设置

（注：准备的Demo中没有用到LTNavigationBar）

## UITableViewController入门

### 1. 介绍

首先，这是官方文档地址，不过刚开始不建议大家看，收藏即可：

[https://developer.apple.com/library/ios/documentation/UIKit/Reference/UITableViewController_Class/](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UITableViewController_Class/)

Tableview的几个重要元素：

* Cell（Static/Dynamic）
* Header
* Footer
* Navigation Bar（不是tableview的元素，但是一般伴随出现）

### 2. 使用

这里我们只讨论storyboard形式的使用。

首先是代码中的几个重要元素：

* indexPath（row/section）
* cell.textLabel/cell.detailTextLabel
* cell identifier
* data source
* delegate
* life cycle

具体实现步骤：

1. 拖拽一个table view controller进入storyboard
2. 新建其文件，并关联
3. 实现data source和delegate
4. 如果是自定义的cell，需要实现cell的自定义类并关联

扩展内容：
自定义cell（暂时没有讲）

====
Copyright &copy; Mandy Xue 2016.07