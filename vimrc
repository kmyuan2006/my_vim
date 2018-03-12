set nocompatible              " be iMproved  
filetype off                  " required!  
set fileencodings=utf-8,gbk,utf-16,big5 
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
  
" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'  
  
" 可以通过以下四种方式指定插件的来源  
" a) 指定Github中vim-scripts仓库中的插件，直接指定插件名称即可，插件明中的空格使用“-”代替。  
"Bundle 'joonty/vim-xdebug.git'
Bundle 'joonty/vdebug'
Bundle 'bling/vim-airline'
  
Bundle 'taglist.vim'
Bundle 'drmingdrmer/xptemplate'
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
"TAB替换为空格
set ts=4 
set expandtab 

"vim-airline设置
"let g:airline_powerline_fonts=1
set noshowmode
set laststatus=2
"let g:Powerline_symbols = 'fancy' " show fancy symbols (requires patched font)
set encoding=utf-8

"NERDTree 设置
"map <C-f> :NERDTreeMirror<CR>
map <C-f> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"xdebug 设置
"let g:debuggerPort = 9010
let g:vdebug_options = {'ide_key': '1'}
"let g:vdebug_options = {'server': '127.0.0.1'}
let g:vdebug_options = {'port': '9010'}

let g:vdebug_keymap = {
    \    "run" : "<P-F5>",
    \    "run_to_cursor" : "<F9>",
    \    "step_over" : "<F2>",
    \    "step_into" : "<F3>",
    \    "step_out" : "<F4>",
    \    "close" : "<F6>",
    \    "detach" : "<F7>",
    \    "set_breakpoint" : "<F10>",
    \    "get_context" : "<F11>",
    \    "eval_under_cursor" : "<F12>",
    \    "eval_visual" : "<Leader>e",
    \}

"YouCompleteMe 设置
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType javascrīpt set omnifunc=javascrīptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"youcompleteme  默认tab  s-tab 和自动补全冲突
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>"force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
"nnoremap <leader>lc :lclose<CR>	"close locationlist
"inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" 跳转到定义处
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

"设置taglist
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidth = 32
map <C-t> :TlistToggle<CR>
" autocmd FileType PHP source vim/php.vim

"---------------alrLine Config--------------  
set t_Co=256  
set laststatus=2  
set lazyredraw  
"let g:airline_theme='powerlineish'  
" 使用powerline打过补丁的字体  
let g:airline_powerline_fonts=1  
if !exists('g:airline_symbols')  
    let g:airline_symbols={}  
endif  
" 关闭空白符检测  
let g:airline#extensions#whitespace#enabled=0  

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
if has('vim_starting')
    if &encoding !=? 'utf-8'
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    set fileencoding=utf-8
    set fileencodings=ucs-bom,utf-8,default,cp936
endif

"调试 
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
        exec "w"
        if &filetype == 'python'
                exec "!time python %"
        elseif &filetype == 'php'
                exec  "python3 debugger.run()"
        endif
endfunc
