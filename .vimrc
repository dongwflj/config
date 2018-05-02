if(has("win32") || has("win95") || has("win64") || has("win16"))
    let g:vimrc_iswindows=1
else
    let g:vimrc_iswindows=0
endif

set tags=tags;
set autochdir
" Disable preview window when c complete
set completeopt=longest,menu
if has("syntax")
    syntax on
endif
colo darkblue
set nu
set gfn=Courier_New:h18
set nobackup
set showmatch
set ruler

" Means use space as tab
set expandtab
" Windows style char align
set tabstop=4 shiftwidth=4 
set cindent
set foldmethod=manual
set foldcolumn =4
"set nowrap
set hlsearch
set incsearch

set encoding=utf-8
set nocp
filetype on
" filetype plugin indent on

"let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936

set fileformats=unix

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TlistToggle<CR>
nmap <F5> :tabprevious<CR>
nmap <F6> :tabnext<CR>
nmap <F7> :tabnew<CR>
nmap <F8> :Search<CR>
nmap <F12> :!ctags -R *<CR>

nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_Inc_Winwidth=0
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

filetype plugin on
let g:pydiction_location="/home/ubuntu/pydiction-master/complete-dict"

if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif  

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

let g:DoxygenToolkit_briefTag_funcName = "yes"

" for C++ style, change the '@' to '\'
let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_briefTag_pre = "\\brief "
let g:DoxygenToolkit_templateParamTag_pre = "\\tparam "
let g:DoxygenToolkit_paramTag_pre = "\\param "
let g:DoxygenToolkit_returnTag = "\\return "
let g:DoxygenToolkit_throwTag_pre = "\\throw " " @exception is also valid
let g:DoxygenToolkit_fileTag = "\\file "
let g:DoxygenToolkit_dateTag = "\\date "
let g:DoxygenToolkit_authorTag = "\\author "
let g:DoxygenToolkit_versionTag = "\\version "
let g:DoxygenToolkit_blockTag = "\\name "
let g:DoxygenToolkit_classTag = "\\class "
let g:DoxygenToolkit_authorName = "Ewen Dong, dongwflj@163.com"
let g:doxygen_enhanced_color = 1
"let g:load_doxygen_syntax = 1
