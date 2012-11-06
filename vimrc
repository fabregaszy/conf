"zhangyan's vimrc
"author zhangyan
"create time: 2011.12.15 20:00 p.m.

"配色方案
if has('gui_running')
	colorscheme solarized
	set background=light
else
	colorscheme evening
	set background=dark
endif
"语法高亮
syntax enable
"允许替换默认方案
syntax on

"设置制表符占用空格数
set tabstop=4
set shiftwidth=4
set noexpandtab

"开启行号显示
set number
"高亮搜索结果
set hlsearch
"实时搜索
set incsearch
"关闭兼容模式
set nocompatible
"显示当前输入的命令
set showcmd

"=======2012/1/28 UPDATE==========
filetype on
filetype plugin on
filetype indent on
"=======2012/1/30 UPDATE==========
"自动打开taglist窗口
:let Tlist_Auto_Open=1 
"如果taglist是最后一个窗口，则退出vim
:let Tlist_Exit_OnlyWindow=1
"=======2012/2/3 UPDATE===========
"自动缩进
set autoindent
"显示标尺和当前输入的命令信息
set ruler
set showcmd
set showmatch
set ignorecase
"=======2012/2/4 UPDATE===========
"for vim-latex suite
:let g:tex_flavor='latex'
set shellslash
"=======2012/2/28 UPDATE==========
"调整Tlist的宽度
:let Tlist_WinWidth=25
"=======2012/3/13 UPDATE==========
"显示换行符等隐藏符号
"set list
"=======2012/10/13 UPDATE=========
set guifont=consolas:h14
" 2012/10/29
set cursorline
"=======2012/11/6 UPDATE==========
"file encoding
set fileencodings=utf-8,euc-jp,gb2312,gb18030,gbk,cp936,latin1
set encoding=utf-8