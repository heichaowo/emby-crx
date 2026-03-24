# Emby Crx

## EN & CN

- [简体中文](README.md)
- [English](README-EN.md)

_Emby Enhancement/Beautification Plugin (for Chrome Core Browser)_

# Warning: The media library cover is an original design. Please do not imitate it without authorization

---

## Features

- 🎠 **Seamless Carousel** — Homepage banner auto-rotates (10s interval) with clone-frame technique for seamless infinite looping
- ◀▶ **Carousel Navigation** — Hidden prev/next buttons that appear on hover, with debounce protection for rapid clicks
- 🪟 **Glassmorphism Library Labels** — Media library cards show a frosted glass title bar sliding up from the bottom on hover (`backdrop-filter: blur`), replacing the old full-overlay approach
- 🎬 **Entry Animations** — Staggered card entrance animations and logo fade-in effects
- 📦 **Dual Deployment** — Supports both Chrome Extension (Manifest V3) and server-side injection

## Animation Preview

> Because the LOGO entrance animation is too prioritized, the effect may be slightly worse. The latest version has been changed. The video is waiting for update. You can try the specific effect yourself.

<https://user-images.githubusercontent.com/22045978/568237325-9a4a4676-3e8d-45c0-91f1-7fca90d5ac7f.mp4>

## Usage Instructions

If you do not need the media library to display the library name on hover, change the `display` property of `.cardText` in `static/css/style.css` to `none`.

## Usage Method

**Two methods — only need to deploy one**

> Plugin Version

_Requires users to load the extension (Chrome 88+ required for Manifest V3)_

Chrome Extension Settings > Developer Mode > Load the unzipped extension > Select the source code directly

> Server Version

_No need to use plugins, deploy directly to the server, users can use it seamlessly_

    # Docker Version (If the script is updated, just re-execute)
    # Note: You need to have access to Github. If you don't understand, please leave a message in the group
    # EmbyServer is the container name. If your container name is not this, please change it to the correct one!
    # Reference tutorial (unofficial): https://mj.tk/2023/07/Emby
    docker exec EmbyServer /bin/sh -c 'cd /system/dashboard-ui && wget -O - https://tinyurl.com/2p97xcpd | sh'

    # Normal version
    # Reference tutorial (unofficial): https://cangshui.net/5167.html

---

## TODO

- Encapsulate as a single JS/CSS for client use
- Encapsulate in Misty Media client
- Playback jump to third-party player function
- Online version detection and update

---

## Effect Preview

# Warning: The media library cover is an original design, please do not imitate it without authorization

![1](https://user-images.githubusercontent.com/18238152/235510774-666d9006-cbad-4b97-9a73-ad5334cb7eee.png) ![2](https://user-images.githubusercontent.com/18238152/235510867-4b71a870-6be6-46a5-b988-527d667b020d.png) ![3](https://user-images.githubusercontent.com/18238152/235510872-ef88ae87-6693-4c11-b7ad-0f05e1a5c583.png) ![4](https://user-images.githubusercontent.com/18238152/235510874-f2fe4715-eb68-4f7a-ac49-50dc5f4ef5aa.png)
