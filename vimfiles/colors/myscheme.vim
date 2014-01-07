" Vim color file
" Maintainer:	Hans Fugal <hans@fugal.net>
" Last Change:	$Date: 2004/06/13 19:30:30 $
" Last Change:	$Date: 2004/06/13 19:30:30 $
" URL:		http://hans.fugal.net/vim/colors/desert.vim
" Version:	$Id: desert.vim,v 1.1 2004/06/13 19:30:30 vimboss Exp $

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" Remove all existing highlighting and set the defaults.
hi clear
" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="myscheme"

" global setting
hi Normal guibg=#ccefcf

" highlight groups
hi LineNr guibg=#00BFFF guifg=white
hi Title	guifg=red

" syntax highlighting groups
hi Comment	guifg=#cdad00
hi Constant	guifg=red

"vim: sw=4

"" all colors are set by
"" $VIMRUNTIME/syntax/syncolor.vim
"--Item--|--Explain--
" Normal - global words
" LineNr - line number
"
"
"
"
"
"
"
"
"
"
"
"
"

