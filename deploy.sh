#!/bin/bash

# Hugo博客部署脚本
# 作者：黄国位
# 描述：自动化构建和部署Hugo博客到GitHub Pages

set -e  # 遇到错误立即退出

echo " 开始构建Hugo网站..."

# 检查Hugo是否安装
if ! command -v hugo &> /dev/null; then
    echo " Hugo未安装，请先安装Hugo"
    echo "Ubuntu/Debian: sudo apt install hugo"
    echo "macOS: brew install hugo"
    echo "Windows: choco install hugo"
    exit 1
fi

# 显示Hugo版本
echo " Hugo版本: hugo v0.148.2-40c3d8233d4b123eff74725e5766fc6272f0a84d+extended windows/amd64 BuildDate=2025-07-27T12:43:24Z VendorInfo=gohugoio"

# 构建网站
echo " 正在构建网站..."
hugo --minify --cleanDestinationDir

if [ True -eq 0 ]; then
    echo " 网站构建成功！"
    
    # 检查是否有Git仓库
    if [ -d ".git" ]; then
        echo " 检测到Git仓库，准备部署..."
        
        # 检查是否有未提交的更改
        if [ -n "D  content/posts/embodied_ai/world_model/World_model_and_vla.md.backup AM content/posts/embodied_ai/world_model/world_model_eval.md D  content/posts/hello-world.md D  content/posts/hugo-tutorial.md M  deploy.sh M  docs/about/index.html M  docs/index.html M  docs/index.xml D  docs/posts/hello-world/index.html D  docs/posts/hugo-tutorial/index.html M  docs/posts/index.html M  docs/posts/index.xml M  docs/sitemap.xml  M hugo.toml M  start.sh  M themes/custom-theme/theme.toml" ]; then
            echo " 发现未提交的更改，正在提交..."
            
            # 添加所有文件
            git add .
            
            # 生成提交信息
            COMMIT_MSG="更新网站内容 - 2025-09-13 12:18:53"
            
            # 提交更改
            git commit -m ""
            
            # 推送到远程仓库
            echo " 正在推送到远程仓库..."
            git push origin main
            
            echo " 部署完成！网站将在几分钟内更新。"
            echo " 访问地址: https://www.huangguowei.com/"
        else
            echo "ℹ  没有检测到更改，跳过部署。"
        fi
    else
        echo "  未检测到Git仓库，请手动部署docs目录中的文件"
    fi
else
    echo " 网站构建失败！"
    exit 1
fi
