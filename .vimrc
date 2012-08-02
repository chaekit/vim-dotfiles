call pathogen#infect()
filetype plugin indent on
set number
colorscheme twilight
if has("gui_running")

  set guioptions=egmrt
  set guifont=Monaco
  macmenu File.New\ Tab key=<nop>
   " FuzzyFinder 
  nnoremap <D-t> :CtrlP<cr> 
  nnoremap <D-d> :vsp <cr>
  nnoremap <D-D> :split <cr>
endif

let &t_Co=256


set smartindent
set autoindent
" Make tabs as wide as two spaces
set tabstop=2
call pathogen#infect()
" Make tabs spaces
set shiftwidth=2
" REAL make tabs spaces
set expandtab
" allows clipboard copy and pasted with vim commands
set clipboard=unnamed
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

au FileType python setl sw=4 sts=4 et
au FileType ruby setl sw=2 sts=2 et
set ft=haml.javascript
let python_highlight_all = 1
syntax on
map <C-r> :w\|!ruby %<cr>
map <C-b> :w\|!bundle install<cr>
map <C-t> :vsp\|:CtrlP <cr>
map <D-t> :CtrlP <cr>
map <C-S> :w\|!rails server -p 5000 <cr>
map <D-k> :NERDTreeToggle <cr>
map <D-j> <C-W>w
"map <C-p> :w\|!git add .|!git commit -m "update."|!git push staging event-form:master"
"
au BufRead,BufNewFile *.hamlc set ft=haml
au BufRead,BufNewFile *.mobile.erb set filetype=html.eruby.javascript.javascript-jquery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.html set ft=html.javascript.javascript-jquery
set hlsearch
