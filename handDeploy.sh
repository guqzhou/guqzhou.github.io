#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# deploy to github

git init
git add -A
git commit -m "github部署"
git push -f git@github.com:guqzhou/guqzhou.github.io.git master:gh-pages # 推送到github


cd - # 退回开始所在目录
rm -rf docs/.vuepress/dist