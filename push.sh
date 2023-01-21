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
git commit -m "deploy"
git pull origin git@github.com:guqzhou/guqzhou/guqzhou.github.io.git master:gh-pages
git push -f git@github.com:guqzhou/guqzhou/guqzhou.github.io.git master:gh-pages # 推送到github

cd - # 退回开始所在目录
rm -rf docs/.vuepress/dist

#!/usr/bin/env sh

# 本脚本为自动部署的入口脚本，只需执行该脚本，即可实现GitHub的自动部署，以及 push 到 GitHub 的所有文件同步到 Gitee 中

# GITHUB_REPO=git@github.com:guqzhou/guqzhou.github.io.git

# comment=$1

# if [ ! $comment ]; then
# comment="更新内容"
# fi

# git add -A

# git commit -m "${comment}"    # $1 是启动该脚本传来的参数，如 sh push.sh hello，其中 hello 就会插入到 $1 处，如果想两个参数，则加 $2

# git push $GITHUB_REPO


