set nocompatible              " be iMproved  
filetype off                  " required!  
  
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
  
" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'  
  
" ����ͨ���������ַ�ʽָ���������Դ  
" a) ָ��Github��vim-scripts�ֿ��еĲ����ֱ��ָ��������Ƽ��ɣ�������еĿո�ʹ�á�-�����档  
  
"Bundle 'tpope/vim-rails.git'  
Bundle 'scrooloose/nerdtree.git'
  
" c) ָ����Github��Git�ֿ�Ĳ������Ҫʹ��git��ַ  
"Bundle 'git://git.wincent.com/command-t.git'  
  
" d) ָ������Git�ֿ��еĲ��  
"Bundle 'file:///Users/gmarik/path/to/plugin'  
  
filetype plugin indent on     " required!  

autocmd FileType PHP source vim/php.vim
