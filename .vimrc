if(has("win32") || has("win95") || has("win64") || has("win16"))
    let g:vimrc_iswindows=1
else
    let g:vimrc_iswindows=0
endif

set tags=tags;
set autochdir

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
"set foldmethod=indent
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
