#!/bin/bash

# Hugo博客快速启动脚本

echo "🚀 启动Hugo博客服务器..."

# 检查Hugo是否安装
if ! command -v hugo &> /dev/null; then
    echo "❌ Hugo未安装，请先安装Hugo"
    echo "Ubuntu/Debian: sudo apt install hugo"
    echo "macOS: brew install hugo"
    exit 1
fi

# 启动服务器
echo "✅ Hugo已安装，正在启动服务器..."
echo "🌐 网站将在 http://localhost:1313 上运行"
echo "📝 按 Ctrl+C 停止服务器"
echo ""

hugo server --buildDrafts --bind 0.0.0.0 --port 1313 