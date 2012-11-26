" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" your pick:
set background=dark	" or light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="pomelo"

hi Normal       ctermfg=179
"hi Normal

" OR

 highlight clear Normal
" set background&
" highlight clear
" if &background == "light"
"   highlight Error ...
"   ...
" else
"   highlight Error ...
"   ...
" endif

" A good way to see what your colorscheme does is to follow this procedure:
" :w 
" :so % 
"
" Then to see what the current setting is use the highlight command.  
" For example,
" 	:hi Cursor
" gives
"	Cursor         xxx guifg=bg guibg=fg 
 	
" Uncomment and complete the commands you want to change from the default.

hi Cursor	     ctermbg=255 ctermfg=16  cterm=none
hi CursorLine     ctermbg=233 cterm=none
hi CursorIM	     ctermbg=60 ctermfg=255  cterm=none
hi Directory	 ctermbg=0 ctermfg=57  cterm=none
hi DiffAdd		 ctermbg=0 ctermfg=43  cterm=none
hi DiffChange	 ctermbg=0 ctermfg=128 cterm=none
hi DiffDelete	 ctermbg=0 ctermfg=209 cterm=none
hi DiffText	     ctermbg=0 ctermfg=252 cterm=none
hi ErrorMsg	     ctermbg=0 ctermfg=160 cterm=none
hi VertSplit	 ctermbg=0 ctermfg=238 cterm=none
hi Folded		 ctermbg=17  ctermfg=75  cterm=none
hi FoldColumn	 ctermbg=0 ctermfg=252 cterm=none
hi IncSearch      ctermbg=0 cterm=inverse
hi LineNr		 ctermbg=233 ctermfg=245 cterm=none
hi ModeMsg		 ctermbg=0 ctermfg=252 cterm=none
hi MoreMsg		 ctermbg=0 ctermfg=252 cterm=none
hi NonText		 ctermbg=16 ctermfg=252 cterm=none
hi Question	     ctermbg=0 ctermfg=252 cterm=none
hi Search		 ctermbg=0 ctermfg=252 cterm=none
hi SpecialKey	 ctermbg=0 ctermfg=252 cterm=none
hi StatusLine	 ctermbg=244 ctermfg=0 cterm=none
hi StatusLineNC	 ctermbg=0 ctermfg=252 cterm=none
hi Title		 ctermbg=0 ctermfg=252 cterm=none
hi Visual	     cterm=inverse
hi VisualNOS	 ctermbg=0 ctermfg=252 cterm=none
hi WarningMsg	 ctermbg=0 ctermfg=252 cterm=none
hi WildMenu	     ctermbg=0 ctermfg=252 cterm=none
hi Menu		     ctermbg=0 ctermfg=252 cterm=none
hi Scrollbar	 ctermbg=16  ctermfg=241 cterm=none
hi Tooltip		 ctermbg=0 ctermfg=252 cterm=none
hi CursorColumn   ctermbg=233 cterm=none

" syntax highlighting groups
hi Comment       ctermbg=0 ctermfg=245 term=none
hi Constant	     ctermbg=0 ctermfg=174 cterm=none
hi Identifier    ctermbg=0 ctermfg=251 cterm=none   "prom
hi Statement	 ctermbg=0 ctermfg=227 cterm=none   "if
hi PreProc	     ctermbg=0 ctermfg=167 cterm=bold
hi Type		     ctermbg=0 ctermfg=167 cterm=none   "->
hi Special	     ctermbg=0 ctermfg=131 cterm=none   "<?
hi Underlined    ctermbg=0 ctermfg=252 cterm=underline
hi Error		 ctermbg=0 ctermfg=196 cterm=underline
hi Todo		     ctermbg=0 ctermfg=220 cterm=none
hi String         ctermbg=0  ctermfg=67   cterm=none
hi Function       ctermbg=0  ctermfg=131   cterm=none
hi Ignore         ctermbg=0  ctermfg=252   cterm=none
hi MatchParen     ctermbg=11  ctermfg=0   cterm=bold 
hi Operator       ctermbg=0  ctermfg=167  cterm=none    "$
hi Delimiter      ctermbg=0  ctermfg=161   cterm=none  "(
hi Exception      ctermbg=0  ctermfg=196   cterm=none 

	" -> HTML-specific
	hi htmlBold                 ctermbg=0  ctermfg=252   cterm=bold
	hi htmlBoldItalic           ctermbg=0  ctermfg=252   cterm=bold,italic
	hi htmlBoldUnderline        ctermbg=0  ctermfg=252   cterm=bold,underline
	hi htmlBoldUnderlineItalic  ctermbg=0  ctermfg=252   cterm=bold,underline,italic
	hi htmlItalic               ctermbg=0  ctermfg=252   cterm=italic
	hi htmlUnderline            ctermbg=0  ctermfg=252   cterm=underline
	hi htmlUnderlineItalic      ctermbg=0  ctermfg=252   cterm=underline,italic
