个人用于 impress.js<sup>*</sup> 展示的CSS样式表。

## 用法

我通常使用 ``git submodule add`` 命令把这个库加到我的展示目录下的``css``子目录。

```sh
git submodule add https://github.com/thawk/impress-css.git css
```

最终的目录结构（``impress.js``目录可以使用原版的[impress.js](https://github.com/impress/impress.js)，我自己使用[体积更小的版本](https://github.com/thawk/impress-shim)）：
```
.
├── css
├── impress.js
│   ├── css
│   ├── js
│   └── extras
├── presentation1.html
└── presentation2.html
```

我通常使用以下样式表组合：

```html
<link href="css/basscss.min.css" rel="stylesheet" />
<link href="css/fonts.css" rel="stylesheet" />
<link href="css/classic-slides.css" rel="stylesheet" />
<link href="impress.js/css/impress-common.css" rel="stylesheet" />
```

## 主要样式表文件

### classic-slides.css

* 主要的样式定义
* 针对 impress.js<sup>*</sup> 定义了很多CSS类

### reset.css

* http://meyerweb.com/eric/tools/css/reset/
* 保证各浏览器都有一个相似的样式基础

### normalize.css

* https://github.com/necolas/normalize.css
* 保证各浏览器都有一个相似的样式基础
* 与``reset.css``不同，``normalize.css``只统一不同浏览器的区别，并不清除所有元素的样式

### basscss.css

* http://basscss.com
* 功能性样式表（Functional CSS），提供了对齐、字体大小等基本格式等CSS类

### tachyons.css

* http://tachyons.io
* 功能更为完善等功能性样式表

### fonts.css

* 基于 https://github.com/zenozeng/fonts.css 中选择的中文字体
* 加入了对 impress.js<sup>*</sup> 部分元素的字体支持

### typo.css

* https://typo.sofi.sh/
* 中文网页重设与排版

