" Vim color file
" author: Mr.Zhou <zhouchuanrui@foxmail.com>


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
" the color good for your eyes
hi Normal guibg=#ccefcf

" highlight groups
hi LineNr guibg=black guifg=white 
"hi LineNr guibg=#00BFFF guifg=white 
hi Title	guifg=red
hi TabLineSel guibg=black guifg=white
hi StatusLine guibg=cyan
"hi TabLine guibg = #ccefcf

" syntax highlighting groups
"hi Comment	guifg=#cdad00
"hi Comment	guifg= DarkYellow
hi Comment	guifg= #7f9f6f 
hi Constant	guifg= #00bfff gui = bold
hi Statement guifg = #b8af43
hi Special guifg = #7f9f6f
hi PreProc guifg = #b9663e

"vim: sw=4

"" all colors are set by originally
"" $VIMRUNTIME/syntax/syncolor.vim

"-----use :hi to list all the currently used item-settings
"-----use :so $VIMRUNTIME\syntax\hitest.vim to generate a buffer which
"			lists all the item settings"
"-----use :verbose hi <group-name> , it returns the directory 
"			to see where the group item is set "

"Suggested color names (these are available on most systems):
"Red		LightRed	DarkRed
"Green	LightGreen	DarkGreen	SeaGreen
"Blue	LightBlue	DarkBlue	SlateBlue
"Cyan	LightCyan	DarkCyan
"Magenta	LightMagenta	DarkMagenta
"Yellow	LightYellow	Brown		DarkYellow
"Gray	LightGray	DarkGray
"Black	White
"Orange	Purple		Violet

"-----hilight group explains
"-----use :hi to list all the currently used item-settings
"--Item--|--Explain--
" Normal - global words
" LineNr - line number
"ColorColumn	used for the columns set with 'colorcolumn'
"Conceal		placeholder characters substituted for concealed
"				text (see 'conceallevel')
"Cursor			the character under the cursor
"CursorIM		like Cursor, but used when in IME mode |CursorIM|
"CursorColumn	the screen column that the cursor is in when 'cursorcolumn' is
"				set
"CursorLine		the screen line that the cursor is in when 'cursorline' is
"				set
"Directory		directory names (and other special names in listings)
"DiffAdd		diff mode: Added line |diff.txt|
"DiffChange		diff mode: Changed line |diff.txt|
"DiffDelete		diff mode: Deleted line |diff.txt|
"DiffText		diff mode: Changed text within a changed line |diff.txt|
"ErrorMsg		error messages on the command line
"VertSplit		the column separating vertically split windows
"Folded			line used for closed folds
"FoldColumn		'foldcolumn'
"SignColumn		column where |signs| are displayed
"IncSearch		'incsearch' highlighting; also used for the text replaced with
"				":s///c"
"LineNr			Line number for ":number" and ":#" commands, and when 'number'
"				or 'relativenumber' option is set.
"CursorLineNr	Like LineNr when 'cursorline' or 'relativenumber' is set for
"				the cursor line.
"MatchParen		The character under the cursor or just before it, if it
"				is a paired bracket, and its match. |pi_paren.txt|
"ModeMsg		'showmode' message (e.g., "-- INSERT --")
"MoreMsg		|more-prompt|
"NonText		'~' and '@' at the end of the window, characters from
"				'showbreak' and other characters that do not really exist in
"				the text (e.g., ">" displayed when a double-wide character
"				doesn't fit at the end of the line).
"Normal			normal text
"Pmenu			Popup menu: normal item.
"PmenuSel		Popup menu: selected item.
"PmenuSbar		Popup menu: scrollbar.
"PmenuThumb		Popup menu: Thumb of the scrollbar.
"Question		|hit-enter| prompt and yes/no questions
"Search			Last search pattern highlighting (see 'hlsearch').
"				Also used for highlighting the current line in the quickfix
"				window and similar items that need to stand out.
"SpecialKey		Meta and special keys listed with ":map", also for text used
"				to show unprintable characters in the text, 'listchars'.
"				Generally: text that is displayed differently from what it
"				really is.
"SpellBad		Word that is not recognized by the spellchecker. |spell|
"				This will be combined with the highlighting used otherwise.
"SpellCap		Word that should start with a capital. |spell|
"				This will be combined with the highlighting used otherwise.
"SpellLocal		Word that is recognized by the spellchecker as one that is
"				used in another region. |spell|
"				This will be combined with the highlighting used otherwise.
"SpellRare		Word that is recognized by the spellchecker as one that is
"				hardly ever used. |spell|
"				This will be combined with the highlighting used otherwise.
"StatusLine		status line of current window
"StatusLineNC	status lines of not-current windows
"				Note: if this is equal to "StatusLine" Vim will use "^^^" in
"				the status line of the current window.
"TabLine		tab pages line, not active tab page label
"TabLineFill	tab pages line, where there are no labels
"TabLineSel		tab pages line, active tab page label
"Title			titles for output from ":set all", ":autocmd" etc.
"Visual			Visual mode selection
"VisualNOS		Visual mode selection when vim is "Not Owning the Selection".
"				Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.
"WarningMsg		warning messages
"WildMenu		current match in 'wildmenu' completion
"

"------highlight syntax items"
"*Comment	any comment

"*Constant	any constant
 "String		a string constant: "this is a string"
 "Character	a character constant: 'c', '\n'
 "Number		a number constant: 234, 0xff
 "Boolean	a boolean constant: TRUE, false
 "Float		a floating point constant: 2.3e10

"*Identifier	any variable name
 "Function	function name (also: methods for classes)

"*Statement	any statement
 "Conditional	if, then, else, endif, switch, etc.
 "Repeat		for, do, while, etc.
 "Label		case, default, etc.
 "Operator	"sizeof", "+", "*", etc.
 "Keyword	any other keyword
 "Exception	try, catch, throw

"*PreProc	generic Preprocessor
 "Include	preprocessor #include
 "Define		preprocessor #define
 "Macro		same as Define
 "PreCondit	preprocessor #if, #else, #endif, etc.

"*Type		int, long, char, etc.
 "StorageClass	static, register, volatile, etc.
 "Structure	struct, union, enum, etc.
 "Typedef	A typedef

"*Special	any special symbol
 "SpecialChar	special character in a constant
 "Tag		you can use CTRL-] on this
 "Delimiter	character that needs attention
 "SpecialComment	special things inside a comment
 "Debug		debugging statements

"*Underlined	text that stands out, HTML links

"*Ignore		left blank, hidden  |hl-Ignore|

"*Error		any erroneous construct

"*Todo		anything that needs extra attention; mostly the
		"keywords TODO FIXME and XXX

