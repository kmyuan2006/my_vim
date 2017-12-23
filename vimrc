set nocompatible              " be iMproved  
filetype off                  " required!  
  
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
  
" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'  
  
" 可以通过以下四种方式指定插件的来源  
" a) 指定Github中vim-scripts仓库中的插件，直接指定插件名称即可，插件明中的空格使用“-”代替。  
Bundle 'xdebug'
  
"Bundle 'tpope/vim-rails.git'  
Bundle 'scrooloose/nerdtree.git'
Bundle 'Valloric/YouCompleteMe'
  
" c) 指定非Github的Git仓库的插件，需要使用git地址  
"Bundle 'git://git.wincent.com/command-t.git'  
  
" d) 指定本地Git仓库中的插件  
"Bundle 'file:///Users/gmarik/path/to/plugin'  
  
filetype plugin indent on     " required!  

set nu " 在左侧行号 
set cursorline "突出显示当前行
set ruler "在右下角显示光标位置的状态行
set autoindent "自动缩进 

"NERDTree 设置
"map <C-f> :NERDTreeMirror<CR>
map <C-f> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"xdebug 设置
let g:debuggerPort = 9000

"YouCompleteMe 设置
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

autocmd FileType PHP source vim/php.vim
