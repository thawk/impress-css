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

  | 类名              | 作用                             |
  |-------------------|----------------------------------|
  | .slide            | 有确定的宽度和高度，缺省没有边框 |
  | .box              | 加边框                           |
  | .title            | 标题页                           |
  | .subslide         | 仅在当前步骤可见，如堆叠的页面   |
  | .only-present     | 只在当前step可见                 |
  | .fly-in           | 从上方飞入的效果                 |
  | .fly-out          | 从下方飞出的效果                 |
  | .fade-in          | 渐显                             |
  | .fade-out         | 渐隐                             |
  | .zoom-in          | 缩小                             |
  | .zoom-out         | 放大                             |
  | .table-borderless | 没有表格边框                     |
  | .table-striped    | 奇偶行底色不同                   |
  | .table-hover      | 鼠标放上去变化背景色             |
  | .font-normalsize  | font-size: 100%                  |
  | .font-larger1     | font-size: 110%                  |
  | .font-larger2     | font-size: 120%                  |
  | .font-larger3     | font-size: 130%                  |
  | .font-larger4     | font-size: 150%                  |
  | .font-larger5     | font-size: 200%                  |
  | .font-smaller1    | font-size: 90%                   |
  | .font-smaller2    | font-size: 80%                   |
  | .font-smaller3    | font-size: 70%                   |
  | .font-smaller4    | font-size: 60%                   |
  | .font-smaller5    | font-size: 50%                   |
  | .accent           | 重点颜色                         |
  | .accent1          | 同.accent                        |
  | .accent2          | 重点颜色2                        |
  | .accent3          | 重点颜色3                        |
  | .accent4          | 重点颜色4                        |
  | .primary          | 主要颜色                         |
  | .success          | 成功颜色                         |
  | .warning          | 告警颜色                         |
  | .error            | 错误颜色                         |
  | .dark             | 深灰                             |
  | .light            | 浅灰                             |
  | .navy             | 深灰色                           |
  | .green            | 绿色                             |
  | .teal             | 青色                             |
  | .blue             | 蓝色                             |
  | .purple           | 紫色                             |
  | .pink             | 粉色                             |
  | .red              | 红色                             |
  | .orange           | 橙色                             |
  | .yellow           | 黄色                             |
  | .grey             | 浅灰色                           |

### normalize.css

* https://github.com/necolas/normalize.css
* 保证各浏览器都有一个相似的样式基础
* 与``reset.css``不同，``normalize.css``只统一不同浏览器的区别，并不清除所有元素的样式

### fonts.css

* 基于 https://github.com/zenozeng/fonts.css 中选择的中文字体
* 加入了对 impress.js<sup>*</sup> 部分元素的字体支持
* 加入几个字体类
  | 类名            | 作用     |
  |-----------------|----------|
  | .font-hei       | 黑体     |
  | .font-kai       | 楷体     |
  | .font-song      | 宋体     |
  | .font-fang-song | 仿宋     |
  | .font-body      | 正文字体 |
  | .font-title     | 标题字体 |
  | .font-quote     | 引用字体 |
  | .font-code      | 代码字体 |

### typo.css

* https://typo.sofi.sh/
* 中文网页重设与排版

### tachyons.css

* http://tachyons.io
* 功能更为完善的功能性样式表

