set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'flazz/vim-colorschemes'

Plugin 'scrooloose/nerdtree'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'davidhalter/jedi-vim'

Plugin 'artur-shaik/vim-javacomplete2'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


colorscheme molokai
set number
set hls "#高亮
set showtabline=2 "#标签页文件名
set ts=4
set expandtab
set autoindent  "#缩进
"set pastetoggle=<f5> "复制粘贴切换键，好像不管用
"<C-l> 通常用于清除并重绘显示屏（参见:h CTRL-L ）。而新的映射项，是在
"原有基础之上增加了暂时关闭查找高亮的功能
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

"============scrooloose/nerdtree==========
"map <C-n>:NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>

"============artur-shaik/vim-javacomplete2==========
autocmd FileType java setlocal omnifunc=javacomplete#Complete
"================快捷键   
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)

nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)




"=============
"

" 隐藏滚动条"
set guioptions-=r
set guioptions-=L
set guioptions-=b
" "设置字体"
"set guifont=Monaco:h13
"colorscheme solarized
set nowrap "设置不折行"
set fileformat=unix "设置以unix的格式保存文件"
set tabstop=4 "设置table长度"
set shiftwidth=4 "同上"
set showmatch "显示匹配的括号"
set scrolloff=5 "距离顶部和底部5行"
set laststatus=2 "命令行为两行"
set fenc=utf-8 "文件编码"
set backspace=2
" "set mouse=a "启用鼠标"
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase "忽略大小写"
set incsearch
set hlsearch "高亮搜索项"
set whichwrap+=<,>,h,l
set autoread
set cursorline "突出显示当前行"
set cursorcolumn "突出显示当前列"
