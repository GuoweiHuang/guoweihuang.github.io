#!/bin/bash

# Hugo博客部署脚本

echo "开始构建Hugo网站..."

# 构建网站
hugo --minify

if [ $? -eq 0 ]; then
    echo "网站构建成功！"
    
    # 检查是否有Git仓库
    if [ -d ".git" ]; then
        echo "检测到Git仓库，准备部署..."
        
        # 添加所有文件
        git add .
        
        # 提交更改
        git commit -m "更新网站内容 - $(date)"
        
        # 推送到远程仓库
        git push origin main
        
        echo "部署完成！"
    else
        echo "未检测到Git仓库，请手动部署public目录中的文件"
    fi
else
    echo "网站构建失败！"
    exit 1
fi 