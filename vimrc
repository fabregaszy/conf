" vim configuration
" Zhangyan(fabregaszy) 
" latest update: 2015/03/01

" use vundle to manage plugins
" for more details, visit https://github.com/gmarik/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" lightline
Plugin 'itchyny/lightline.vim'
" solarized color
Plugin 'altercation/vim-colors-solarized'
" Go-Lang support
Plugin 'fatih/vim-go'
" other plugins
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'jiangxincode/mpi.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'justinmk/vim-syntax-extra'
call vundle#end()            " required
filetype plugin indent on    " required

" always show the GUI toolbar
set guioptions=T
set laststatus=2

" color scheme
if has('gui_running')
	colorscheme molokai
	set guifont=Monaco:h12
	"set background=light
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
set numberwidth=5
"高亮搜索结果
set hlsearch
"实时搜索
set incsearch
"显示当前输入的命令
set showcmd

set ruler
set cursorline
" windows size when open a file
set lines=80
set columns=120
set colorcolumn=100
set wildmenu
set wildmode=longest:list,full
" Display extra whitespace
set list listchars=tab:»·,trail:·

" file encoding settings
set encoding=utf-8
set termencoding=utf-8 " for tty display
set fileencodings=usc-bom,utf-8,euc-jp,gb2312,gb18030,gbk,cp936,latin1

" Tag list config
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
map <silent> <F9> :TlistToggle<cr>
