# 郭伟煌的个人博客

基于Hugo框架构建的个人博客网站。

## 特性

- 🚀 使用Hugo静态网站生成器，构建速度快
- 🎨 自定义主题，简洁美观的设计
- 📱 响应式设计，支持各种设备访问
- 📝 Markdown格式编写内容
- 🏷️ 支持标签和分类
- 🔍 SEO友好

## 技术栈

- **Hugo**: 静态网站生成器
- **HTML/CSS**: 前端页面和样式
- **Markdown**: 内容编写格式
- **Git**: 版本控制和部署

## 本地开发

### 环境要求

- Hugo 0.80.0 或更高版本
- Git

### 安装Hugo

#### Ubuntu/Debian
```bash
sudo apt update
sudo apt install hugo
```

#### macOS
```bash
brew install hugo
```

#### Windows
从[Hugo官网](https://gohugo.io/installation/windows/)下载安装包。

### 运行项目

1. 克隆仓库
```bash
git clone https://github.com/guoweihuang/guoweihuang.github.io.git
cd guoweihuang.github.io
```

2. 启动本地服务器
```bash
hugo server --buildDrafts
```

3. 在浏览器中访问 `http://localhost:1313`

## 项目结构

```
.
├── content/          # 内容文件
│   ├── posts/        # 博客文章
│   └── about.md      # 关于页面
├── themes/           # 主题文件
│   └── custom-theme/ # 自定义主题
├── static/           # 静态资源
├── layouts/          # 布局模板
├── hugo.toml         # Hugo配置文件
├── deploy.sh         # 部署脚本
└── README.md         # 项目说明
```

## 添加新内容

### 创建新文章
```bash
hugo new posts/文章标题.md
```

### 文章格式
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

## 部署

### 自动部署
使用提供的部署脚本：
```bash
./deploy.sh
```

### 手动部署
1. 构建网站
```bash
hugo --minify
```

2. 将 `public` 目录中的文件部署到Web服务器

## 自定义主题

主题文件位于 `themes/custom-theme/` 目录：

- `layouts/`: HTML模板文件
- `static/css/`: CSS样式文件
- `theme.toml`: 主题配置文件

## 贡献

欢迎提交Issue和Pull Request！

## 许可证

MIT License

## 联系方式

- GitHub: [guoweihuang](https://github.com/guoweihuang)
- 博客: [https://guoweihuang.github.io](https://guoweihuang.github.io)

---

*最后更新于 2024年1月* 