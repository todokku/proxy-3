#!/bin/sh

#!/bin/sh

echo 触发git同步

git pull
echo 确保有文件变更，可以推送到仓库
date > deploy_ver.txt
git add .
git commit -m "只是为了触发构建"
git push
 

pushd tdm_git_sync
sh sync.sh
popd