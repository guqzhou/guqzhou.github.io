#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# deploy to github
# echo 'guqzhou.github.io' > CNAME
# if [ -z "$GITHUB_TOKEN" ]; then
#   msg='deploy'
#   githubUrl=git@github.com:guqzhou/guqzhou.github.io.git
# else
#   githubUrl=https://guqzhou:${GITHUB_TOKEN}@github.com/guqzhou/guqzhou.github.io.git
#   git config --global user.name "guqzhou"
#   git config --global user.email "guqzhou@163.com"
# fi
git init
git config --global user.name "guqzhou"
git config --global user.email "guqzhou@163.com"
git add -A
git commit -m "deploy"
git push -f githubUrl=git@github.com:guqzhou/guqzhou.github.io.git master:gh-pages # 推送到github
#git push -f git@github.com:miluluyo/vdoingBlog.git master:gh-pages


# deploy to coding
#echo 'www.miluluu.com\miluluu.com' > CNAME  # 自定义域名
#if [ -z "$CODING_TOKEN" ]; then  # -z 字符串 长度为0则为true；$CODING_TOKEN来自于github仓库`Settings/Secrets`设置的私密环境变量
#  codingUrl=git@e.coding.net:miluluu/miluluu.git
#else
#  codingUrl=https://miluluu:${CODING_TOKEN}@e.coding.net/miluluu/miluluu/miluluu.git
#fi
#git add -A
#git commit -m "${msg}"
#git push -f $codingUrl master # 推送到coding

cd - # 退回开始所在目录
rm -rf docs/.vuepress/dist