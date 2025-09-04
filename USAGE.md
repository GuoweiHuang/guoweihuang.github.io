# 使用说明

## 🚀 快速开始

### 1. 启动博客
```bash
./start.sh
```
或者手动启动：
```bash
hugo server --buildDrafts
```

### 2. 访问网站
在浏览器中打开：http://localhost:1313

## 📝 添加新文章

### 方法1：使用Hugo命令
```bash
hugo new posts/文章标题.md
```

### 方法2：手动创建
在 `content/posts/` 目录下创建新的 `.md` 文件，格式如下：

```markdown
---
title: "文章标题"
date: 2024-01-16
tags: ["标签1", "标签2"]
description: "文章描述"
---

# 文章内容

这里是文章的具体内容...
```

## 🎨 自定义主题

主题文件位于 `themes/custom-theme/` 目录：

- `layouts/`: HTML模板文件
- `static/css/style.css`: CSS样式文件
- `theme.toml`: 主题配置

## 🚀 部署

### 自动部署（推荐）
```bash
./deploy.sh
```

### 手动部署
1. 构建网站：
```bash
hugo --minify
```

2. 将 `public/` 目录中的文件上传到Web服务器

## 📁 项目结构

```
.
├── content/              # 内容文件
│   ├── posts/           # 博客文章
│   └── about.md         # 关于页面
├── themes/              # 主题文件
│   └── custom-theme/    # 自定义主题
├── static/              # 静态资源
├── layouts/             # 布局模板
├── hugo.toml            # Hugo配置文件
├── start.sh             # 启动脚本
├── deploy.sh            # 部署脚本
└── README.md            # 项目说明
```

## 🔧 常用命令

```bash
# 启动开发服务器
hugo server --buildDrafts

# 构建网站
hugo

# 构建并压缩
hugo --minify

# 创建新文章
hugo new posts/文章标题.md

# 创建新页面
hugo new 页面名称.md
```

## 🌐 访问地址

- 本地开发: http://localhost:1313
- 生产环境: https://guoweihuang.github.io

## 📞 获取帮助

如果遇到问题，请：

1. 查看Hugo官方文档：https://gohugo.io/
2. 检查配置文件 `hugo.toml`
3. 查看控制台错误信息
4. 提交GitHub Issue

---

*祝您使用愉快！* 