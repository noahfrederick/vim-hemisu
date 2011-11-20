" hemisu.vim - Vim color scheme
" ----------------------------------------------------------
" Author:	Noah Frederick (http://noahfrederick.com/)
" Version:	2.0
" License:	Creative Commons Attribution-NonCommercial
" 			3.0 Unported License       (see readme.md)
" ----------------------------------------------------------

" Reset current syntax highlighting
hi clear
if exists("syntax_on")
	syntax reset
endif

" Declare theme name
let g:colors_name="hemisu"

" Define reusable colors
let s:dBlue=    { "gui": "#87DFFF", "cterm": "117" }
let s:dRed=     { "gui": "#FF9696", "cterm": "210" }
let s:dNorm=    { "gui": "#EEEEEE", "cterm": "255" }
let s:dDim=     { "gui": "#BBBBBB", "cterm": "249" }
let s:dGreen=   { "gui": "#B1D631", "cterm": "149" }
let s:dMint=    { "gui": "#BBFFAA", "cterm": "157" }
let s:dTan=     { "gui": "#F6F3E8", "cterm": "229" }
let s:dComment= { "gui": "#777777", "cterm": "238" }
let s:dSubtle=  { "gui": "#444444", "cterm": "233" }
let s:dHiSubtle={ "gui": "#111111", "cterm": "235" }
let s:dHiRed=   { "gui": "#870000", "cterm": "88"  }
let s:dHiGreen= { "gui": "#5F5F00", "cterm": "58"  }
let s:dHiBlue=  { "gui": "#005F87", "cterm": "24"  }
let s:dHiGrey=  { "gui": "#8A8A8A", "cterm": "245" }

let s:lBlue=    { "gui": "#3D9ABE", "cterm": "33"  }
let s:lRed=     { "gui": "#D75F5F", "cterm": "167" }
let s:lPink=    { "gui": "#FF0055", "cterm": "197" }
let s:lNorm=    { "gui": "#333333", "cterm": "235" }
let s:lDim=     { "gui": "#777777", "cterm": "243" }
let s:lGreen=   { "gui": "#86AC00", "cterm": "64"  }
let s:lTan=     { "gui": "#968767", "cterm": "94"  }
let s:lComment= { "gui": "#999999", "cterm": "246" }
let s:lSubtle=  { "gui": "#CCCCCC", "cterm": "250" }
let s:lHiSubtle={ "gui": "#E2F7FF", "cterm": "195" }
let s:lHiRed=   { "gui": "#FFAFAF", "cterm": "217" }
let s:lHiGreen= s:dMint
let s:lHiBlue=  s:dBlue

let s:black=    { "gui": "#000000", "cterm": "16"  }
let s:white=    { "gui": "#FFFFFF", "cterm": "231" }

function! s:h(group, style)
	execute "highlight" a:group
		\ "guifg="   . (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
		\ "guibg="   . (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
		\ "guisp="   . (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
		\ "gui="     . (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
		\ "ctermfg=" . (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
		\ "ctermbg=" . (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
		\ "cterm="   . (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" Vim >= 7.0 specific colors -------------------------------
if version >= 700
	if &background=="dark"
		call s:h("CursorLine",  { "bg": s:dHiSubtle })
		call s:h("ColorColumn", { "bg": s:dHiRed })
		call s:h("MatchParen",  { "fg": s:dBlue, "bg": s:dHiSubtle, "gui": "bold" })
		call s:h("SpellBad",    { "sp": s:dRed, "gui": "undercurl" })
		call s:h("SpellRare",   { "sp": s:dGreen, "gui": "undercurl" })
		call s:h("SpellCap",    { "sp": s:dBlue, "gui": "undercurl" })
		call s:h("Pmenu",       { "bg": s:dHiSubtle })
		call s:h("PmenuSel",    { "bg": s:dHiBlue })
		call s:h("PmenuSBar",   { "bg": s:dSubtle })
		call s:h("PmenuThumb",  { "bg": s:dNorm })
	else
		call s:h("CursorLine",  { "bg": s:lHiSubtle })
		call s:h("ColorColumn", { "bg": s:lHiRed })
		call s:h("MatchParen",  { "fg": s:lBlue, "bg": s:lHiSubtle, "gui": "bold" })
		call s:h("SpellBad",    { "sp": s:lRed, "gui": "undercurl" })
		call s:h("SpellRare",   { "sp": s:lGreen, "gui": "undercurl" })
		call s:h("SpellCap",    { "sp": s:lBlue, "gui": "undercurl" })
		call s:h("Pmenu",       { "bg": s:lHiSubtle })
		call s:h("PmenuSel",    { "bg": s:lHiBlue })
		call s:h("PmenuSBar",   { "bg": s:lSubtle })
		call s:h("PmenuThumb",  { "bg": s:lNorm })
	endif
	hi! link CursorColumn	CursorLine
	hi! link SpellLocal	SpellRare
endif

" UI colors ------------------------------------------------
if &background=="dark"
	" Dark theme
	call s:h("Cursor",       { "fg": s:white, "bg": s:dHiGrey })
	call s:h("Normal",       { "fg": s:dNorm, "bg": s:black })
	call s:h("NonText",      { "fg": s:dSubtle })
	call s:h("StatusLine",   { "fg": s:dNorm, "bg": s:dSubtle, "gui": "bold", "cterm": "bold" })
	call s:h("StatusLineNC", { "fg": s:dDim, "bg": s:dHiSubtle })
	call s:h("VertSplit",    { "fg": s:dSubtle, "bg": s:dHiSubtle })
	call s:h("TabLine",      { "fg": s:dDim })
	call s:h("TabLineSel",   { "bg": s:dSubtle, "gui": "bold", "cterm": "bold" })
	call s:h("Folded",       { "fg": s:dComment, "bg": s:dHiSubtle })
	call s:h("SignColumn",   { "fg": s:dNorm })
	call s:h("Directory",    { "fg": s:dBlue })
	call s:h("Underlined",   { "fg": s:dBlue, "gui": "underline", "cterm": "underline" })
	call s:h("Title",        { "fg": s:dTan, "gui": "bold", "cterm": "bold" })
	call s:h("ErrorMsg",     { "fg": s:white, "bg": s:dHiRed })
	call s:h("Visual",       { "bg": s:dHiBlue })
	call s:h("Search",       { "bg": s:dHiGreen })
	call s:h("IncSearch",    { "bg": s:dHiBlue })
	call s:h("DiffAdd",      { "bg": s:dHiGreen })
	call s:h("DiffChange",   { "bg": s:dHiRed })
	call s:h("DiffDelete",   { "fg": s:dHiRed, "bg": s:dHiRed })
	call s:h("DiffText",     { "bg": s:dHiRed, "gui": "bold", "cterm": "bold" })
else
	" Light theme
	call s:h("Cursor",       { "fg": s:white, "bg": s:lPink })
	call s:h("Normal",       { "fg": s:lNorm, "bg": s:white })
	call s:h("NonText",      { "fg": s:lSubtle })
	call s:h("StatusLine",   { "fg": s:lNorm, "bg": s:lHiBlue, "gui": "bold", "cterm": "bold" })
	call s:h("StatusLineNC", { "fg": s:lDim, "bg": s:lHiSubtle })
	call s:h("VertSplit",    { "fg": s:lSubtle, "bg": s:lHiSubtle })
	call s:h("TabLine",      { "fg": s:lDim })
	call s:h("TabLineSel",   { "bg": s:lHiBlue, "gui": "bold", "cterm": "bold" })
	call s:h("Folded",       { "fg": s:lComment, "bg": s:lHiSubtle })
	call s:h("SignColumn",   { "fg": s:lNorm })
	call s:h("Directory",    { "fg": s:lBlue })
	call s:h("Underlined",   { "fg": s:lBlue, "gui": "underline", "cterm": "underline" })
	call s:h("Title",        { "fg": s:lTan, "gui": "bold", "cterm": "bold" })
	call s:h("ErrorMsg",     { "fg": s:white, "bg": s:lHiRed })
	call s:h("Visual",       { "bg": s:lHiBlue })
	call s:h("Search",       { "bg": s:lHiGreen })
	call s:h("IncSearch",    { "bg": s:lHiBlue })
	call s:h("DiffAdd",      { "bg": s:lHiGreen })
	call s:h("DiffChange",   { "bg": s:lHiRed })
	call s:h("DiffDelete",   { "fg": s:lHiRed, "bg": s:lHiRed })
	call s:h("DiffText",     { "bg": s:lHiRed, "gui": "bold", "cterm": "bold" })
endif

hi! link WildMenu	IncSearch
hi! link FoldColumn	SignColumn
hi! link WarningMsg	ErrorMsg
hi! link MoreMsg	Title
hi! link Question	MoreMsg
hi! link ModeMsg	MoreMsg
hi! link TabLineFill	StatusLineNC
hi! link LineNr		NonText
hi! link SpecialKey	Directory
hi! clear Ignore

" Syntax highlighting --------------------------------------
if &background=="dark"
	" Dark theme
	call s:h("Type",      { "fg": s:dMint })
	call s:h("String",    { "fg": s:dGreen })
	call s:h("Keyword",   { "fg": s:dGreen, "gui": "bold", "cterm": "bold" })
	call s:h("Delimiter", { "fg": s:dDim })
	call s:h("Comment",   { "fg": s:dComment, "gui": "italic" })
	call s:h("Todo",      { "fg": s:dComment, "sp": s:dHiRed, "gui": "underline,italic", "cterm": "underline" })
else
	" Light theme
	call s:h("Type",      { "fg": s:lPink })
	call s:h("String",    { "fg": s:lGreen })
	call s:h("Keyword",   { "fg": s:lGreen, "gui": "bold", "cterm": "bold" })
	call s:h("Delimiter", { "fg": s:lDim })
	call s:h("Comment",   { "fg": s:lComment, "gui": "italic" })
	call s:h("Todo",      { "fg": s:lComment, "sp": s:lHiRed, "gui": "underline,italic", "cterm": "underline" })
endif

call s:h("Function", { "gui": "bold", "cterm": "bold" })
hi! link Identifier	Function
hi! link Statement	Type
hi! link Constant	Directory
hi! link Number		Constant
hi! link Special	Constant
hi! link PreProc	Constant
hi! link Error		ErrorMsg

" HTML -----------------------------------------------------
hi! link htmlLink	Underlined
hi! link htmlTag	Type
hi! link htmlEndTag	htmlTag

