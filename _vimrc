set nocompatible

" Vundle configs
"
filetype off  
" set the path of Vundle 
set rtp+=$VIM/vimfiles/bundle/vundle/  
call vundle#rc('$VIM/vimfiles/bundle/')  
""call vundle#rc()  
" set the protocol 'git' instead of 'http'
let g:vundle_default_git_proto = 'git'  
Bundle 'gmarik/vundle'  
filetype plugin indent on

" My Bundle list
Bundle 'taglist.vim'  
Bundle 'scrooloose/nerdtree' 
Bundle 'scrooloose/nerdcommenter'
Bundle 'msanders/snipmate.vim'
"Bundle 'tomasr/molokai'

" Bundle 'Shougo/neocomplcache.vim' 

" set the encoding system
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936

language messages zh_CN.utf-8

">>>>>>>>>>>>>>>>>source $VIMRUNTIME/vimrc_example.vim
"
"the vimrc_example configs
"not totally the same actually
"for details, check the vimrc_example.vim file
"set backspace=indent,eol,start		"this line already exist in mswin part
set nobackup
set history=100
set ruler
set showcmd
set incsearch
set nohlsearch
set ignorecase
set smartcase
" for formatting
map Q gq	
inoremap <C-U> <C-G>u<C-U>
set mouse=a
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
if has("autocmd")
"	filetype plugin indent on
	augroup vimrcEx
	au!
	autocmd FileType text setlocal textwidth=278
	autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
	augroup END
else
	set autoindent
endif 
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
"end of vimrc_example configs

">>>>>>>>>>>>>>>>>source $VIMRUNTIME/mswin.vim
"
"the mswin configs
"not totally the same, check mswin.vim file for detail
" set the 'cpoptions' to its Vim default
if 1	" only do this when compiled with expression evaluation
  let s:save_cpo = &cpoptions
endif
set cpo&vim
behave mswin
" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]
vnoremap <C-S>		<C-C>:update<CR>
" inoremap <C-S>		<C-O>:update<CR>
" restore 'cpoptions'
set cpo&
if 1
  let &cpoptions = s:save_cpo
  unlet s:save_cpo
endif
"end of mswin configs
"
"
set diffexpr=MyDiff()
function! MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


"********zcr configs
"colorscheme desert "choose the color theme to [desert] 
colorscheme myscheme 
set guifont=Consolas:h9 " set the font and font-size
set gfw=YouYuan:h11 " set Chinese font
""set number  " show the line number
set relativenumber	" show the relative line number, a 7.3 new feature
set nohls " set on high-light search
set shortmess=atI  " set the message mode
set go= " set no tool-bar, tool-menu or speed-bar
"******** set tabwidth cluster
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set autoread " auto read file from outside
"set lazyredraw " do not redraw when running macros 
set nowritebackup " set backup off
set noswapfile
set scrolloff=3 " set 7 lines left at top/bottom when moving with j/k
"******** set match clusters
"------>alredy set brackets auto expanding, no need to set match any more
"----->set showmatch 
"----->set matchpairs=(:),{:},[:],<:>
"----->set matchtime=5

set browsedir=buffer " Make GUI File Open use current directory
set autochdir " Always switch to the current file directory

" set session file for recover last work windows
" auto save session in $VIN\Session.vim when quit vim
" hit <F4> to recover session.
set sessionoptions=curdir,tabpages  "",resize
let $VIMSESSION = '$VIM\Session.vim'
autocmd VimLeave * mks! $VIMSESSION
nmap <silent> <F4> :so $VIMSESSION<CR>
autocmd GUIEnter * simalt ~x " maximun the window on start

" ctrl+n to do the word traversal
nmap <C-N> *
" '' to insert a blank line below
nnoremap <Space> o<ESC>k
" jump short lines
nnoremap j gj
nnoremap k gk
" cursor move in insert mode
imap <C-H> <Left>
imap <C-J> <Down>
imap <C-K> <Up>
imap <C-L> <Right>
" map <c-d> to <c-h> to delete a character 
inoremap <C-D> <C-H>
" map <c-s> to <c-d> to delete a shifwidth
inoremap <C-S> <C-D>
" fast move
inoremap <C-F> <C-Right>
inoremap <C-B> <C-Left>
inoremap <C-Q> <Home>
inoremap <C-Z> <End>
"browser alike tab switching 
nnoremap <C-S-TAB> gT
nnoremap <C-TAB> gt
"fast window switching
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
" map <c-z> to redraw the window
nnoremap <C-Z> <C-L>
"******** parenthesis expanding
"******** auto fill the bracket
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
""inoremap < <><Left>
""inoremap ' ''<Left>
inoremap " ""<Left>
inoremap “ “”<Left>
inoremap /* /**/<Left><Left>

"******* begin-end parenthesis abbreviation
	"use in .v files
	"iabbrev beg beginend<Left><Left><Left><C-M><C-M><Up>
	"use a snip instead


"******** set mapleader
"don't know how exactly it works, but it is seemed really popular
let mapleader = ","
let g:mapleader = ","


"set the diff function shortcuts
"
"set the keyserial ",df" to put two buffers into diff function
"it is better to keep the two buffers aligned in verticalsplit windows
nmap <leader>df :diffthis<CR><C-W><C-W>:diffthis<CR>
"set the keyserial ",dd" to quit diff function
nmap <leader>dd :diffoff<CR>
"---->end

"file&buffer operation shortcuts
"
" ",o" to do :e command. With file arg
nmap <leader>o :edit 
	""----> ",os" to do :split command. With no file arg
	""---->already exist, the same as <c-w> s
	""---->abandon this one
	""nmap <leader>os :split<CR>
	" ",os" to do :split command. With file arg
	" nmap <leader>os :split 
	""----> ",ov" to do :vsplit command. With no file arg
	""---->already exist, the same as <c-w> v
	""---->abandon this one
	""nmap <leader>ov :vsplit<CR>
	" ",ov" to do :vsplit command. With file arg
	" nmap <leader>ov :vsplit

" ",tn" to do :split command. With no file arg
nmap <leader>tn :tabnew 
" ",s" or ",w" to do :split command. With file arg
	" nmap <leader>s :write<CR>
	" the slow stroke of ,s woudle mis-operate to 
	" delete a char...
nmap <leader>w :write<CR>

" ",h <arg>" to vertically open the help window
nmap <leader>h :vertical help  
" --->end 

nmap <leader>a ggVG
vmap <leader>y "+y

" set the format of the <c-a>,<c-x> operation
set nrformats-=octal
"set nrformats+=alpha

" the vimrep tool use
nmap <leader>vg :vimgrep 
nmap <leader>vc :cn<CR>

" Ctags configuration
" it is nothing complex but a key map
""nmap <F9> :!ctags -R *<CR>

nmap <silent> <F9> :syntax clear<CR>
nmap <silent> <F10> :syntax on<CR>


" taglist configuration
let Tlist_Ctags_Cmd='E:\ctags.exe'
let Tlist_Compact_Format = 1 " show small menu
let Tlist_Show_One_File = 1 "Show single file tags only
let Tlist_Use_Right_Window = 1 " split to the right side of the screen
let Tlist_Sort_Type = "name" " order by
let Tlist_File_Fold_Auto_Close = 0 " fold closed other trees
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_GainFocus_On_ToggleOpen = 1 " switch the cursor to taglist window on opening
nmap <silent> <F8> :TlistToggle<CR>

" NERD_tree configuration
nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>
nmap <leader>nc :NERDTreeCWD<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 2
let NERDTreeIgnore=['\.pyc$','\.svn$','\.tmp$','\.bak$','\.bsf$','\.stp$','\.rpt$','\.summary$','\~$']

" NERDCommenter configs
" seemed three is no need to configure
" what a pulgin

" snipMate configs
"let g:snippets_dir = '$VIM/vimfiles/bundle/snipmate.vim/snippet/'
"let g:snippets_dir = 'E:/Program Files/Vim/vimfiles/bundle/snipmate.vim/snippets/'
let g:snips_author = 'Mr Zhou'

" neocomplcache configs
" picked from neocomplcache-examples
	" i didn't use any 'AutoComplPop', ok?
	" let g:acp_enableAtStartup = 0
" let g:neocomplcache_enable_insert_char_pre = 1
" let g:neocomplcache_enable_at_startup = 1
" let g:neocomplcache_enable_smart_case = 1
" let g:neocomplcache_min_syntax_length = 3
" let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
" inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
" inoremap <expr><C-Left>  neocomplcache#close_popup() . "\<C-Left>"
" inoremap <expr><C-Right> neocomplcache#close_popup() . "\<C-Right>"
" inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
" inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" inoremap <expr><Home>  neocomplcache#close_popup() . "\<Home>"
" inoremap <expr><End> neocomplcache#close_popup() . "\<End>"

" file type switch
	" .vt would be a verilog testbench file
au BufNewFile,BufRead *.vt set filetype=verilog
	" .md or .mkd would be a markdown file
au BufNewFile,BufRead *.md, *.mkd set filetype=markdown

" the Vundle requires this line to recover
filetype plugin indent on

