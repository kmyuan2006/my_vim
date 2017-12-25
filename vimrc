set nocompatible              " be iMproved  
filetype off                  " required!  
  
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
  
" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'  
  
" ����ͨ���������ַ�ʽָ���������Դ  
" a) ָ��Github��vim-scripts�ֿ��еĲ����ֱ��ָ��������Ƽ��ɣ�������еĿո�ʹ�á�-�����档  
"Bundle 'joonty/vim-xdebug.git'
Bundle 'joonty/vdebug'
  
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
"let g:debuggerPort = 9010
let g:vdebug_options = {'ide_key': '1'}
"let g:vdebug_options = {'server': '127.0.0.1'}
let g:vdebug_options = {'port': '9010'}
"YouCompleteMe ����
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType javascr��pt set omnifunc=javascr��ptcomplete#CompleteJS
autocmd FileType javascr��pt set omnifunc=javascr��ptcomplete#CompleteJS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"�뿪����ģʽ���Զ��ر�Ԥ������
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"�س���ѡ�е�ǰ��
"�������Ҽ�����Ϊ ����ʾ������Ϣ
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"youcompleteme  Ĭ��tab  s-tab ���Զ���ȫ��ͻ
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "�رռ���.ycm_extra_conf.py��ʾ

let g:ycm_collect_identifiers_from_tags_files=1	" ���� YCM ���ڱ�ǩ����
let g:ycm_min_num_of_chars_for_completion=2	" �ӵ�2�������ַ��Ϳ�ʼ����ƥ����
let g:ycm_cache_omnifunc=0	" ��ֹ����ƥ����,ÿ�ζ���������ƥ����
let g:ycm_seed_identifiers_with_syntax=1	" �﷨�ؼ��ֲ�ȫ
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>"force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
"nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"��ע��������Ҳ�ܲ�ȫ
let g:ycm_complete_in_comments = 1
"���ַ���������Ҳ�ܲ�ȫ
let g:ycm_complete_in_strings = 1
"ע�ͺ��ַ����е�����Ҳ�ᱻ���벹ȫ
let g:ycm_collect_identifiers_from_comments_and_strings = 0

" ��ת�����崦
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" autocmd FileType PHP source vim/php.vim
