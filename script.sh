#!/bin/bash

# Emby Beautify 服务端安装脚本
# 在 Emby 的 web 目录下执行此脚本

rm -rf emby-beautify
mkdir -p emby-beautify
wget https://raw.githubusercontent.com/heichaowo/emby-beautify/main/static/css/style.css -P emby-beautify/
wget https://raw.githubusercontent.com/heichaowo/emby-beautify/main/static/js/common-utils.js -P emby-beautify/
wget https://raw.githubusercontent.com/heichaowo/emby-beautify/main/static/js/jquery-3.6.0.min.js -P emby-beautify/
wget https://raw.githubusercontent.com/heichaowo/emby-beautify/main/static/js/md5.min.js -P emby-beautify/
wget https://raw.githubusercontent.com/heichaowo/emby-beautify/main/content/main.js -P emby-beautify/

# 检查 index.html 是否已注入
if grep -q "emby-beautify" index.html; then
    echo "Index.html already contains emby-beautify, skipping insertion."
else
    # 定义要插入的代码
    code='<link rel="stylesheet" id="theme-css" href="emby-beautify/style.css" type="text/css" media="all" />\n<script src="emby-beautify/common-utils.js"></script>\n<script src="emby-beautify/jquery-3.6.0.min.js"></script>\n<script src="emby-beautify/md5.min.js"></script>\n<script src="emby-beautify/main.js"></script>'

    # 在 </head> 之前插入代码
    new_content=$(echo -e "${content/<\/head>/$code<\/head>}")

    # 将新内容写入 index.html
    echo -e "$new_content" > index.html
    echo "Emby Beautify injected successfully."
fi