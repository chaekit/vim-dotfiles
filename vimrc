set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" set background=dark


set nocompatible
" let Vundle manage Vundle

" ==========================================================
" Bundles
" ==========================================================
"
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'derekwyatt/vim-scala'
Bundle 'tpope/vim-surround'
Bundle 'mileszs/ack.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'tpope/vim-surround'
Bundle 'git://git.code.sf.net/p/vim-latex/vim-latex'
Bundle 'vim-ruby/vim-ruby'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'SirVer/ultisnips'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'jelera/vim-javascript-syntax'
" Python
"
Bundle 'davidhalter/jedi-vim'
Bundle 'pydoc.vim'
Bundle 'https://github.com/fs111/pydoc.vim'

filetype plugin indent on     " required!
" ...

" ZenCoding
let g:user_zen_expandabbr_key = '<c-e>' 
let g:use_zen_complete_tag = 1
set number

" Vim airline
let g:airline_powerline_fonts = 1

" ==========================================================
" MacVim
" ==========================================================
"
if has("gui_running")
  set guioptions=egmrt
  "set guifont=Monaco:h10
  set guifont=Menlo:h12
  set showtabline=0
  set guioptions-=r 

  macmenu File.New\ Tab key=<D-T>
  " macmenu File.Open\ Tab\.\.\. key=<nop>
  nnoremap <D-e> :tabnew<cr> 
  nnoremap <D-t> :CtrlP<cr> 
  nnoremap <D-d> :vsp <cr>
  nnoremap <D-D> :split <cr>
  nnoremap <C-r> :ClearCtrlPCache <cr>
endif


" ==========================================================
" Indentation
" ==========================================================
"
set smartindent
set autoindent
" Make tabs as wide as two spaces
set tabstop=4
" call pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
" Make tabs spaces
set shiftwidth=4
" REAL make tabs spaces
set expandtab
" allows clipboard copy and pasted with vim commands
set clipboard=unnamed

au FileType python setl sw=4 sts=4 et
au FileType ruby setl sw=2 sts=2 et
au FileType yaml setl sw=2 ts=2 et
au FileType javascript setl sw=2 sts=2 et
au FileType javascript call JavaScriptFold()
au FileType html setl sw=2 sts=2 et
au FileType scss setl sw=2 sts=2 et
au FileType coffee setl sw=2 sts=2 et
au FileType maude setl sw=2 sts=2 et


let python_highlight_all = 1   
set hlsearch


map <D-r> :w\|!ruby %<cr>
map <C-b> :w\|!bundle install<cr>
map <C-t> :vsp\|:CtrlP <cr>
map <D-t> :CtrlP <cr>
map <D-k> :NERDTreeToggle <cr>
map <D-j> <C-W>w
map <F9> :call Tex_RunLaTeX() <cr>

"
" ==========================================================
" Keybinding for terminal vim
" ==========================================================
"
map <C-e> :vsp <cr>
map <C-k> :NERDTreeToggle <cr>
map <C-t> :CtrlP <cr>
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsExpandTrigger="<c-t>"
"let g:UltiSnipsJumpForwardTrigger="<c-n>"
"
" ==========================================================
" FileType
" ==========================================================
"


au BufRead,BufNewFile *.hamlc set ft=haml
au BufRead,BufNewFile *.mobile.erb set filetype=html.eruby.javascript.javascript-jquery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.html set ft=html
au BufRead,BufNewFile *.html set ft=htmljinja.html
au BufRead,BufNewFile *.maude set ft=maude

"
" ==========================================================
" FileType
" ==========================================================

syntax enable
set t_Co=256
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"colors base16-solarized
"colors solarized
colors Tomorrow-Night-Eighties

"
" ==========================================================
" LaTeX stuff
" ==========================================================
"
"
" au BufWritePost *.tex silent call Tex_RunLaTeX()
" au BufWritePost *.tex silent !pkill -USR1 xdvi.bin
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

