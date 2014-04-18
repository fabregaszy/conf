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

"=======2013/4/29 UPDATE==========
"set different tab for ruby and js
if has("autocmd")
	filetype on
	autocmd FileType ruby setlocal ts=2 sts=2 sw=2 et
	autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noet
endif
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
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
"set guifont=Consolas\ for\ Powerline:h14
" 2012/10/29
set cursorline
"=======2012/11/6 UPDATE==========
"file encoding
set fileencodings=utf-8,euc-jp,gb2312,gb18030,gbk,cp936,latin1
set encoding=utf-8
"=======2013/3/23/ UPDATE=========
call pathogen#infect()
"always show the GUI toolbar
set guioptions=T
set laststatus=2
"powerline{
let g:Powerline_colorsheme='solarized256'
let g:Powerline_symbols='fancy'
"}
"=======2014/4/18 UPDATE=========
" auto add file info template
function AddFileInfoForC()
		call append(0, "/****************************************************************************")
		call append(1, "*                                                                           *")
		call append(2, "*  ソース名:                                                                *")
		call append(3, "*  概要    :                                                                *")
		call append(4, "*                                                                           *")
		call append(5, "*                           COPYRIGHT ".strftime("%Y")."                                  *") 
		call append(6, "* ***************************************************************************")
		call append(7, "*  更新履歴：                                                               *")
		call append(8, "*  版数　   改造年月日    改造者        改版内容                            *")
		call append(9, "* ------------------------------------------------------------------------- *")
		call append(10, "****************************************************************************/")
endf

function AddFileInfoForRuby()
		call append(0, "#====================================================")
		call append(1, "#-      Description: ")
		call append(2, "#-      Author     : Zhang Yan")
		call append(3, "#-      Version    : ")
		call append(4, "#-      Date       : ".strftime("%Y-%m-%d"))
		call append(5, "#====================================================")
endf

function AddFileInfo()
		if &filetype=="c"
				call AddFileInfoForC()
		elseif &filetype=="cpp"
				call AddFileInfoForC()
		elseif &filetype=="ruby"
				call AddFileInfoForRuby()
		endif
endf

map <F4> :call AddFileInfo()<CR>
