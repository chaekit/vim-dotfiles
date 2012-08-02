" Maintainer: Nour Sharabash
" Credits:    This is a modification of BusyBee.vim color scheme

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "nour2"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine    guibg=#202020 ctermbg=234
  hi CursorColumn  guibg=#202020 ctermbg=234
  hi MatchParen    guifg=#d0ffc0 guibg=#202020 gui=bold ctermfg=157 ctermbg=237 cterm=bold
  hi Pmenu 		   guifg=#ffffff guibg=#202020 ctermfg=255 ctermbg=238
  hi PmenuSel 	   guifg=#000000 guibg=#b1d631 ctermfg=0 ctermbg=148
endif

" General colors
hi Cursor 		   guifg=NONE    guibg=#626262 gui=NONE ctermbg=241
hi Normal 		   guifg=#e2e2e5 guibg=#202020 gui=NONE ctermfg=253 ctermbg=234
hi NonText 		   guifg=#808080 guibg=#202020 gui=NONE ctermfg=244 ctermbg=235
hi LineNr 		   guifg=#303030 guibg=#202020 gui=NONE ctermfg=244 ctermbg=232
hi StatusLine 	   guifg=#d3d3d5 guibg=#303030 gui=NONE ctermfg=253 ctermbg=238
hi StatusLineNC    guifg=#939395 guibg=#303030 gui=NONE ctermfg=246 ctermbg=238
hi VertSplit 	   guifg=#444444 guibg=#303030 gui=NONE ctermfg=238 ctermbg=238
hi Folded 		   guibg=#384048 guifg=#a0a8b0 gui=NONE ctermbg=4 ctermfg=248
hi Title		   guifg=#f6f3e8 guibg=NONE	gui=bold ctermfg=254 cterm=bold
hi Visual		   guifg=#faf4c6 guibg=#3c414c gui=NONE ctermfg=254 ctermbg=4
hi SpecialKey	   guifg=#808080 guibg=#343434 gui=NONE ctermfg=244 ctermbg=236

" Syntax highlighting
hi Comment 		   guifg=#3f3f3f gui=italic ctermfg=244
hi Todo 		   guifg=#8f8f8f gui=NONE ctermfg=245
hi Boolean         guifg=#b1d631 gui=NONE ctermfg=148
hi String 		   guifg=#606060 gui=NONE ctermfg=148
hi Identifier 	   guifg=#b1d631 gui=NONE ctermfg=148
hi Function 	   guifg=#ffff00 gui=NONE ctermfg=255
hi Type 		   guifg=#7e8aa2 gui=NONE ctermfg=103
hi Statement 	   guifg=#7e8aa2 gui=NONE ctermfg=103
hi Keyword		   guifg=#ff9800 gui=NONE ctermfg=208
hi Constant 	   guifg=#ff9800 gui=NONE  ctermfg=208
hi Number		   guifg=#ff9800 gui=NONE ctermfg=208
hi Special		   guifg=#ff9800 gui=NONE ctermfg=208
hi PreProc 		   guifg=#faf4c6 gui=NONE ctermfg=230
hi Todo            guifg=#ff9f00 guibg=#202020 gui=NONE

" Code-specific colors
hi pythonImport    guifg=#009000 gui=NONE ctermfg=255
hi pythonException guifg=#f00000 gui=NONE ctermfg=200
hi pythonOperator  guifg=#7e8aa2 gui=NONE ctermfg=103
hi pythonBuiltinFunction guifg=#009000 gui=NONE ctermfg=200
hi pythonExClass   guifg=#009000 gui=NONE ctermfg=200

"hi mydots  guifg=#99ff00
"hi vertsplit guifg=#222 guibg=#222
hi cursor gui=reverse guifg=NONE guibg=NONE
hi normal guibg=#101010 guifg=#def
hi treepart guifg=#444
hi string gui=NONE guifg=#888
hi directory guifg=#68a
hi special guifg=#f66
"hi statusline guifg=#ddd guibg=#333 gui=NONE
hi error guibg=NONE guifg=NONE
hi todo gui=NONE guifg=#f90 guibg=NONE
hi identifier guifg=#cf9
"hi cursorcolumn guibg=#000 guifg=NONE
hi nontext guibg=#101010
hi head gui=NONE guifg=#ffffff
hi matchparen guifg=red
hi nerdtreecurrentnode guifg=#9af
hi foldcolumn guibg=#101010 guifg=#0f9
hi linenr guibg=#101010
"hi myassignments guifg=#99ff00
hi specialkey guibg=NONE guifg=#303030
hi comment gui=NONE guifg=#ffff00
"hi mysemis guifg=#99ff00
"hi statuslinenc guifg=#999 guibg=#222 gui=NONE
hi cursorline guibg=#292929 guifg=NONE gui=NONE

"match myassignments /\(=\)\|\(:\)\|\( \* \)\|\( - \)\|\( + \)\|\( < \)\|\( >= \)\|\( <= \)\|\( => \)/
"2match mydots /\(\->\)\|\(\.\)/
"3match mysemis /(\|)\|{\|}\|\(;\)\|\(,\)/
"4match head /^=head. .*/
