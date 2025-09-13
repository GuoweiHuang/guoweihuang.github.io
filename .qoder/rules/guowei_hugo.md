---
trigger: always_on
alwaysApply: true
---

请遵循KISS原则编写代码实现，尽量保持简单、易懂、文件少。在做任务任务之前，先创建任务清单（TODO list），哪怕只有一个任务也需要创建；执行任务清单时，中途不要停止，直到所有任务执行完成。先不急着提交git，先完成所有任务，让我人工确认一遍，没问题了再提交git。

---
description: Hugo 博客核心上下文
globs: ["**/*"]
alwaysApply: true
---

# Hugo 博客开发守则

## 技术栈
- 静态生成器：Hugo ≥ 0.130  
- 主题：PaperMod（官方持续维护）  
- 样式：Tailwind CSS 3.4 → 通过 `assets/css/tailwind.css` 引入  
- 部署：GitHub Actions → Cloudflare Pages  
- 评论：Giscus（pathname 映射，仅英文 slug）  
- 语言：默认中文，多语言开关在 `config/_default/languages.toml`  

## 代码/内容规范
1. Markdown 统一使用 `---` YAML front-matter  
2. 文件名、slug 只用小写英文+连字符；中文标题勿出现在文件系统  
3. 图片与索引文件同目录：`content/posts/2025/hello/index.md` + `*.webp`  
4. 自动生成 `lastmod`：以 Git 提交时间优先，本地修改时间为兜底  
5. 任何新页面必须同步更新 `/sitemap.xml` & `/rss.xml`  
6. 不用外部 JS CDN，所有脚本放 `assets/js/` 并走 Hugo Pipes 压缩  
7.  Lighthouse ≥ 95 分（性能+SEO+可访问性）方可合并主分支  

## 生成约定
- 先写/更新 Front-matter，再写正文  
- 自动补全 `description`（120–160 字）与 `summary`（50–70 字）  
- 配图必须加 `<figure>` + `alt`，宽度≤1200 px，体积≤80 KB，格式 webp  
- 若用户未指定样式，默认使用「极简白+强调色 #0066ff」  
- 禁止输出「TODO / FIXME / 占位符」  
- 任何代码块须标明语言标签  