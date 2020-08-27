# Vim的一些功能

---

## 首先明白vim两种状态

* 命令模式（按i进入）
* 输入模式（按Esc进入）

---

## 快速跳转行

```python
hjkl(left up down right)
数字+gg(跳到第几行的第一列)
'W'(一个词一个词的向前跳)
'B'(一个词一个词地往后跳)
'↑,↓，←，→，pgup，pgdn'(上下左右和翻页)
'/+搜索的字'(找到关键字并且高亮)
数字+上下左右(往上下左右跳几行)
'n'(向下一个一个查看关键字)
'N'(向上一个一个查看关键字)
```

---

## Vimrc配置

我用的是Github上面别人的简单[配置文件](https://github.com/amix/vimrc)
(you can also write it by yourself)
当然也可以在~/.vimrc这个文件里自定义一些功能（膜拜大佬们）

---

## vim的删除功能

```python
'cc'(删除一整行，并且进入输入模式)本质是剪切
'dd'(删除一整行)
'u'(上一步，还原删除或者撤销)
'c+数字+c'(删除多行，进入输入模式)本质是剪切
'd+数字+d'(删除多行)
'v+↑/↓'(选中多行)
```

---

## vim的复制粘贴

```python
'p'(粘贴在光标后)
'P'(粘贴在光标前)
'y'(复制)
'yy'(复制一行)
'c'(剪切)
```

---

## vim的插件

~~可以用vim自带的自动补全~~

~~按下ctrl+n就行~~

开个玩笑，这个自动补全**真的不好用**

> 来使用第三方插件吧
>
> 插件管理器这里推荐
>
> *vim plug*
> 
> *vundle*(I like this,It's very convenient)

详情请见[这里](https://github.com/junegunn/vim-plug)

具体的插件就自己选购吧。。。
some plug will become better in the future
---

最后给张键位图

![hh](https://www.runoob.com/wp-content/uploads/2015/10/vi-vim-cheat-sheet-sch.gif)
---

END
