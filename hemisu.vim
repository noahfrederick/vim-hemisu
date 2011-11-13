" Author:	Noah Frederick (http://noahfrederick.com/)
" Version:	1.0
" Last Change:	2011-11-13
"
" ----------------------------------------------------------
" This work is licensed under the Creative Commons
" Attribution-NonCommercial 3.0 Unported License
" (see included readme.md).
" ----------------------------------------------------------

hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "hemisu"

" Vim >= 7.0 specific colors -------------------------------
if version >= 700
	if &background=="dark"
		hi CursorLine	guibg=#111111 ctermbg=235   cterm=NONE
 		hi MatchParen	guifg=#bbffaa guibg=#111111 gui=bold ctermfg=157 ctermbg=235
	else
		hi CursorLine	guibg=#E2F7FF ctermbg=195   cterm=NONE
 		hi MatchParen	guifg=#bbffaa guibg=#eeeeee gui=bold
	endif
	hi! link CursorColumn	CursorLine
endif

" General colors -------------------------------------------
if &background=="dark"
	" Dark theme
	hi Cursor	guifg=NONE    guibg=#626262 gui=NONE
	hi Normal	guifg=#eeeeee guibg=#000000 ctermfg=7
	hi NonText	guifg=#444444 guibg=NONE    gui=NONE    ctermfg=233
	hi StatusLine	guifg=#000000 guibg=#eeeeee gui=bold    ctermfg=235 ctermbg=7   cterm=bold
	hi StatusLineNC	guifg=#000000 guibg=#eeeeee gui=NONE    ctermfg=235 ctermbg=7   cterm=NONE
	hi VertSplit	guifg=#262626 guibg=#262626 gui=NONE    ctermfg=235 ctermbg=235 cterm=NONE
	hi Directory	guifg=#87dfff ctermfg=117
	hi Underlined	guifg=#87dfff gui=underline ctermfg=117 cterm=underline
	hi TabLine	guifg=#eeeeee guibg=#262626 gui=NONE    ctermfg=7   ctermbg=237
	hi TabLineSel	guifg=#eeeeee guibg=#000000 gui=bold    ctermfg=7   ctermbg=235
	hi Title	guifg=#f6f3e8 guibg=NONE    gui=bold    ctermfg=7   cterm=bold
else
	" Light theme
	hi Cursor	guifg=#ffffff guibg=#ff0055 gui=NONE
	hi Normal	guifg=#333333 guibg=#ffffff ctermfg=235
	hi NonText	guifg=#bbbbbb guibg=NONE    gui=NONE    ctermfg=250
	hi StatusLine	guifg=#ffffff guibg=#333333 gui=bold    ctermfg=15  ctermbg=235 cterm=bold
	hi StatusLineNC	guifg=#ffffff guibg=#333333 gui=NONE    ctermfg=15  ctermbg=235 cterm=NONE
	hi VertSplit	guifg=#333333 guibg=#333333 gui=NONE    ctermfg=235 ctermbg=235 cterm=NONE
	hi Directory	guifg=#00A2E2 ctermfg=33
	hi Underlined	guifg=#00a2e2 gui=underline ctermfg=33  cterm=underline
	hi TabLine	guifg=#333333 guibg=#eeeeee gui=NONE
	hi TabLineSel	guifg=#333333 guibg=#ffffff gui=bold
	hi Title	guifg=#968767 guibg=NONE    gui=bold    ctermfg=94  cterm=bold
endif

hi! link TabLineFill	StatusLine
hi! link LineNr		NonText

hi Folded		guibg=#384048 ctermbg=238   guifg=#a0a8b0 ctermfg=248 gui=NONE
hi! link IncSearch	Search

" Syntax highlighting --------------------------------------
if &background=="dark"
	" Dark theme
	hi Type		guifg=#bbffaa gui=NONE      ctermfg=157
	hi String	guifg=#b1d631 ctermfg=149
	hi Comment	guifg=#777777 gui=italic    ctermfg=238
else
	" Light theme
	hi Type		guifg=#ff0055 gui=NONE      ctermfg=197
	hi String	guifg=#86AC00 ctermfg=64
	hi Comment	guifg=#999999 gui=italic    ctermfg=246
endif

hi Function		guifg=NONE    gui=bold      ctermfg=NONE cterm=bold
hi! link Identifier	Function
hi! link Statement	Type
hi Keyword		guifg=#b1d631 gui=bold      ctermfg=149  cterm=bold 
hi! link Constant	Directory
hi Delimiter		ctermfg=249
hi! link Number		Constant
hi! link Special	Constant
hi! link PreProc	Constant
hi Todo			guifg=#000000 guibg=#e6ea50 gui=italic   ctermfg=0  ctermbg=185
hi Error		guibg=#d75f5f ctermbg=167

" HTML -----------------------------------------------------
hi! link htmlLink	Underlined
hi! link htmlTag	Type
hi! link htmlEndTag	htmlTag
