# Emby Crx

## EN & CN

- [简体中文](README.md)
- [English](README-EN.md)

_Emby 增强/美化 插件 (适用于 Chrome 内核浏览器)_

# 警告: 媒体库封面为原创设计, 未经授权请勿模仿使用

---

## 功能特性

- 🎠 **无缝轮播图** — 首页 Banner 自动轮播（10 秒间隔），最后一张到第一张的过渡采用克隆帧技术实现无缝循环
- ◀▶ **轮播导航按钮** — 左右隐藏式导航按钮，鼠标悬浮时显现，支持快速切换与边界防抖
- 🪟 **毛玻璃媒体库标签** — 媒体库卡片 hover 时从底部滑出毛玻璃标题条（`backdrop-filter: blur`），替代原有的全覆盖黑色遮罩
- 🎬 **入场动画** — 媒体库卡片依次入场动画，LOGO 淡入效果
- 📦 **双模部署** — 支持 Chrome 插件（Manifest V3）和服务端注入两种模式

## 动画预览

> 因 LOGO 入场动画过于优先, 效果可能略差, 最新版已更改, 视频等待更新, 具体效果可以自行尝试

<https://user-images.githubusercontent.com/22045978/568237325-9a4a4676-3e8d-45c0-91f1-7fca90d5ac7f.mp4>

## 使用须知

媒体库标题显示模式可在 `static/css/style.css` 顶部的 `:root` 中切换 `--misty-library-label-mode`：

- `always` — 常驻半透明标签, hover 加亮 **(默认)**
- `hover` — 仅鼠标悬浮时显示
- `none` — 完全隐藏

## 使用方法

**两种方法 只需部署一种即可**

> 插件版

_需要用户装载插件（要求 Chrome 88+ 支持 Manifest V3）_

Chrome 扩展设置 > 开发者模式 > 加载已解压的扩展程序 > 直接选择源码即可

> 服务器版

_无需使用插件, 直接部署至服务端, 用户无缝使用_

    # Docker 版 (如遇脚本更新, 重新执行即可)
    # 注意: 需要能访问的上Github的环境, 如果不懂 请在群内@我留言
    # EmbyServer 为容器名, 如果你的容器名不是这个 请改成正确的!
    # 参考教程(非官方): https://mj.tk/2023/07/Emby
    docker exec EmbyServer /bin/sh -c 'cd /system/dashboard-ui && wget -O - https://tinyurl.com/2p97xcpd | sh'

    # 正常版
    # 参考教程(非官方): https://cangshui.net/5167.html

---

## TODO

- 封装为单 JS/CSS, 供客户端使用
- 内封装进 Misty Media 客户端
- 播放跳转第三方播放器功能
- 版本在线检测更新

---

## 效果预览

# 警告: 媒体库封面为原创设计, 未经授权请勿模仿使用

![1](https://user-images.githubusercontent.com/18238152/235510774-666d9006-cbad-4b97-9a73-ad5334cb7eee.png) ![2](https://user-images.githubusercontent.com/18238152/235510867-4b71a870-6be6-46a5-b988-527d667b020d.png) ![3](https://user-images.githubusercontent.com/18238152/235510872-ef88ae87-6693-4c11-b7ad-0f05e1a5c583.png) ![4](https://user-images.githubusercontent.com/18238152/235510874-f2fe4715-eb68-4f7a-ac49-50dc5f4ef5aa.png)
