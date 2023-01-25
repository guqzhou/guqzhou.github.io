#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# deploy to github
# echo 'guqzhou/github.io' > CNAME 自定义域名

 if [ -z "$ACCESS_TOKEN" ]; then
   msg='deploy'
   githubUrl=git@github.com:guqzhou/guqzhou.github.io.git
 else
   msg='github自动部署'
   git config --global user.name "guqzhou"
   git config --global user.email "guqzhou@163.com"
   githubUrl=https://guqzhou:${ACCESS_TOKEN}@github.com/guqzhou/guqzhou.github.io.git # -z 字符串 长度为0则为true；$ACCESS_TOKEN来自于github仓库`Settings/Secrets`设置的私密环境变量
 fi

 git init
 git add -A
 git commit -m "${msg}"
 git push -f $githubUrl main:gh-pages # 推送到github

#git init
#git config --global user.name "guqzhou"
#git config --global user.email "guqzhou@163.com"
#git add -A
#git commit -m "github 自动部署"
#git push -f https://guqzhou:$GITEE_RSA_PRIVATE_KEY@github.com/guqzhou/guqzhou.github.io.git master:gh-pages # 推送到github

# deploy to coding
#echo 'www.guqzhou.com\guqzhou.com' > CNAME  # 自定义域名
#if [ -z "$CODING_TOKEN" ]; then  # -z 字符串 长度为0则为true；$CODING_TOKEN来自于github仓库`Settings/Secrets`设置的私密环境变量
#  codingUrl=git@e.coding.net:guqzhou/guqzhou.git
#else
#  codingUrl=https://guqzhou:${CODING_TOKEN}@e.coding.net/guqzhou/guqzhou.git
#fi
#git add -A
#git commit -m "${msg}"
#git push -f $codingUrl master # 推送到coding

cd - # 退回开始所在目录
rm -rf docs/.vuepress/dist
