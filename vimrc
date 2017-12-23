set nocompatible              " be iMproved  
filetype off                  " required!  
  
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
  
" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'  
  
" ����ͨ���������ַ�ʽָ���������Դ  
" a) ָ��Github��vim-scripts�ֿ��еĲ����ֱ��ָ��������Ƽ��ɣ�������еĿո�ʹ�á�-�����档  
Bundle 'xdebug'
  
"Bundle 'tpope/vim-rails.git'  
Bundle 'scrooloose/nerdtree.git'
Bundle 'Valloric/YouCompleteMe'
  
" c) ָ����Github��Git�ֿ�Ĳ������Ҫʹ��git��ַ  
"Bundle 'git://git.wincent.com/command-t.git'  
  
" d) ָ������Git�ֿ��еĲ��  
"Bundle 'file:///Users/gmarik/path/to/plugin'  
  
filetype plugin indent on     " required!  

set nu " ������к� 
set cursorline "ͻ����ʾ��ǰ��
set ruler "�����½���ʾ���λ�õ�״̬��
set autoindent "�Զ����� 

"NERDTree ����
"map <C-f> :NERDTreeMirror<CR>
map <C-f> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"xdebug ����
let g:debuggerPort = 9000

"YouCompleteMe ����
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

autocmd FileType PHP source vim/php.vim
