#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 百度链接推送
curl -H 'Content-Type:text/plain' --data-binary @urls.txt "http://data.zz.baidu.com/urls?site=https://guqzhou.github.io&token=EiuLL0XL2GlcTZ3n"
curl -H 'Content-Type:text/plain' --data-binary @urls.txt "http://data.zz.baidu.com/urls?site=https://guqzhou.gitee.io&token=EiuLL0XL2GlcTZ3n"
curl -H 'Content-Type:text/plain' --data-binary @urls.txt "http://data.zz.baidu.com/urls?site=https://guqzhou.tech&token=EiuLL0XL2GlcTZ3n"

rm -rf urls.txt # 灭迹
