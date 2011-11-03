" dc2 a.k.a. darcourses v. 2 colour scheme for (g)Vim
" Author:  bohoomil
" Date:    July, 2011
" Release: 1.0
"
" This theme is supposed to be used
" with dc2 .Xdefaults colour settings.
" GUI part is .Xdefaults independent.

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="dc2"

"
" gui zone
"
hi Normal                  guifg=#999999 guibg=#020202
hi Boolean                 guifg=#A64286
hi Character               guifg=#808080 guibg=#020202 gui=none 
hi Comment                 guifg=#4C4C4C gui=none
hi Conditional             guifg=#BF9F5F
hi Constant                guifg=#877C43
hi Cursor                  guibg=#1C678C 
hi Debug                   guifg=#A64286
hi Define                  guifg=#BF9F5F 
hi Delimiter               guifg=#4C4C4C
hi DiffLine                guifg=#406080
hi DiffOldLine             guifg=#802635
hi DiffOldFile             guifg=#802635
hi DiffNewFile             guifg=#608040 
hi DiffAdd                 guifg=#5BA65A
hi DiffAdded               guifg=#5BA65A
hi DiffDelete              guifg=#802635
hi DiffRemoved             guifg=#802635
hi DiffChange              guifg=#337373
hi DiffChanged             guifg=#337373
hi DiffText                guifg=#1C678C
hi Directory               guifg=#608040
hi Error                   guifg=#993535 guibg=#020202
hi ErrorMsg                guifg=#993535 guibg=#020202
hi Exception               guifg=#802635
hi Float                   guifg=#6C98A6
hi FoldColumn              guifg=#337373 guibg=#121212
hi Folded                  guifg=#337373 guibg=#121212
hi Function                guifg=#877C43
hi Identifier              guifg=#BF9F5F
hi IncSearch               guibg=#FF5FFF guifg=#262626
hi Keyword                 guifg=#1C678C gui=none
hi Label                   guifg=#684C80
hi LineNr                  guifg=#4C4C4C 
hi Macro                   guifg=#BF9F5F
hi MatchParen              guifg=#2A2A2A guibg=#6C98A6
hi ModeMsg                 guifg=#877C43
hi Moded                   guifg=#993535 guibg=#1A1A1A
hi ModeMsg                 guifg=#877C43
hi MoreMsg                 guifg=#6C98A6
hi NonText                 guifg=#337373
hi Number                  guifg=#406080
hi Operator                guifg=#AF5F00
hi PreCondit               guifg=#5BA65A
hi PreProc                 guifg=#8787D7
hi Question                guifg=#6C98A6
hi Repeat                  guifg=#6C98A6
hi Search                  guifg=#FF5FFF guibg=#262626
hi SpecialChar             guifg=#A64286
hi SpecialComment          guifg=#87AF87
hi Special                 guifg=#A64286
hi SpecialKey              guifg=#5BA65A
hi Statement               guifg=#406080 gui=none
hi StorageClass            guifg=#337373 gui=none
hi String                  guifg=#608040
hi Structure               guifg=#3995BF
hi Tag                     guifg=#684181 gui=none
hi Title                   guifg=#808080
hi Todo                    guifg=#5BA65A guibg=#1A1A1A gui=bold
hi Typedef                 guifg=#993535
hi Type                    guifg=#663366 gui=none
hi Underlined              guifg=#8787D7 guibg=#020202
hi VertSplit               guifg=#5F875F guibg=#262626
hi Visual                  guifg=#FF8787 guibg=#262626
hi VisualNOS               guifg=#5BA65A guibg=#262626 gui=bold
hi WarningMsg              guifg=#993535 
hi WildMenu                guibg=#121212 guifg=#8787D7
hi CursorLine              guibg=#121212 gui=none

hi StatusLine              guifg=#808080 guibg=#1A1A1A gui=none
hi StatusLineNC            guifg=#1A1A1A guibg=#808080
hi StatusModFlag           guifg=#993535 guibg=#1A1A1A gui=none
hi StatusRO                guifg=#337373 guibg=#1A1A1A gui=none
hi StatusHLP               guifg=#608040 guibg=#1A1A1A gui=none
hi StatusPRV               guifg=#877C43 guibg=#1A1A1A gui=none
hi StatusFTP               guifg=#1C678C guibg=#1A1A1A gui=none

" spellchecking
hi SpellLocal              guisp=#020202 guifg=#6C98A6 gui=underline
hi SpellBad                guisp=#B3B3B3 guifg=#802635 gui=underline
hi SpellCap                guisp=#020202 guifg=#3995BF gui=underline
hi SpellRare               guisp=#020202 guifg=#A64286 gui=underline

" pmenu
hi PMenu                   guifg=#808080 guibg=#1A1A1A
hi PMenuSel                guifg=#1A1A1A guibg=#4C4C4C
hi PmenuSbar               guifg=#4C4C4C guibg=#B3B3B3

" html
hi htmlTag                 guifg=#3995BF
hi htmlEndTag              guifg=#3995BF
hi htmlTagName             guifg=#BF9F5F

" xml
hi xmlTag                  guifg=#1C678C
hi xmlEndTag               guifg=#1C678C
hi xmlTagName              guifg=#877C43

" perl
hi perlSharpBang           guifg=#5BA65A gui=none
hi perlStatement           guifg=#A64286
hi perlStatementStorage    guifg=#802635
hi perlVarPlain            guifg=#337373
hi perlVarPlain2           guifg=#BF9F5F

" ruby
hi rubySharpBang           guifg=#5BA65A gui=none

" mini buffer explorer
hi MBENormal               guifg=#4C4C4C 
hi MBEChanged              guifg=#802635
hi MBEVisibleNormal        guifg=#684C81
hi MBEVisibleNormalActive  guifg=#A64286
hi MBEVisibleChanged       guifg=#808080
hi MBEVisibleChangedActive guifg=#993535

"
" term zone
"
hi Normal                  ctermfg=none
hi Boolean                 ctermfg=13
hi Comment                 ctermfg=8    ctermbg=none  cterm=none
hi Conditional             ctermfg=11
hi Constant                ctermfg=3
hi Cursor                  ctermbg=4
hi Debug                   ctermfg=13
hi Define                  ctermfg=11
hi Delimiter               ctermfg=8
hi DiffLine                ctermfg=4 
hi DiffOldLine             ctermfg=1
hi DiffOldFile             ctermfg=1
hi DiffNewFile             ctermfg=2
hi DiffAdd                 ctermfg=10  ctermbg=none
hi DiffAdded               ctermfg=10
hi DiffDelete              ctermfg=1   ctermbg=none
hi DiffRemoved             ctermfg=1
hi DiffChange              ctermfg=6   ctermbg=none
hi DiffChanged             ctermfg=6
hi DiffText                ctermfg=4   ctermbg=none
hi Directory               ctermfg=2
hi Error                   ctermfg=9   ctermbg=none
hi ErrorMsg                ctermfg=9   ctermbg=none
hi Exception               ctermfg=1
hi Float                   ctermfg=14
hi FoldColumn              ctermfg=6   ctermbg=0
hi Folded                  ctermfg=6   ctermbg=0
hi Function                ctermfg=3
hi Identifier              ctermfg=11
hi IncSearch               ctermbg=207 ctermfg=235
hi Keyword                 ctermfg=4
hi Label                   ctermfg=5
hi LineNr                  ctermfg=8 
hi Macro                   ctermfg=11
hi MatchParen              ctermfg=0   ctermbg=14
hi ModeMsg                 ctermfg=3
hi MoreMsg                 ctermfg=14
hi NonText                 ctermfg=8   ctermbg=none 
hi Number                  ctermfg=6
hi Operator                ctermfg=130
hi PreCondit               ctermfg=10  cterm=none
hi PreProc                 ctermfg=104
hi Question                ctermfg=14
hi Repeat                  ctermfg=14
hi Search                  ctermfg=207 ctermbg=235
hi SpecialChar             ctermfg=13
hi SpecialComment          ctermfg=108
hi Special                 ctermfg=13
hi SpecialKey              ctermfg=10
hi Statement               ctermfg=4   ctermbg=none
hi StorageClass            ctermfg=6
hi String                  ctermfg=2
hi Structure               ctermfg=12
hi Tag                     ctermfg=5
hi Title                   ctermfg=7   ctermbg=none cterm=bold
hi Todo                    ctermfg=10  ctermbg=0
hi Typedef                 ctermfg=9
hi Type                    ctermfg=5
hi Underlined              ctermfg=104 ctermbg=232
hi VertSplit               ctermfg=65  ctermbg=235
hi Visual                  ctermfg=210 ctermbg=235
hi VisualNOS               ctermfg=10  ctermbg=235  cterm=bold
hi WarningMsg              ctermfg=9   
hi WildMenu                ctermbg=0   ctermfg=104
hi CursorLine              ctermbg=0   cterm=none

" statusline
hi StatusLine              ctermfg=7   ctermbg=0    cterm=none
hi StatusLineNC            ctermfg=0   ctermbg=7
hi StatusModFlag           ctermfg=9   ctermbg=0    cterm=none
hi StatusRO                ctermfg=6   ctermbg=0    cterm=none
hi StatusHLP               ctermfg=2   ctermbg=0    cterm=none
hi StatusPRV               ctermfg=3   ctermbg=0    cterm=none
hi StatusFTP               ctermfg=4   ctermbg=0    cterm=none

" spellchecking
hi SpellLocal              ctermfg=0   ctermbg=14  cterm=underline
hi SpellBad                ctermfg=15  ctermbg=1   cterm=underline
hi SpellCap                ctermfg=0   ctermbg=12  cterm=underline
hi SpellRare               ctermfg=0   ctermbg=13  cterm=underline

" pmenu
hi Pmenu                   ctermfg=7    ctermbg=0
hi PmenuSel                ctermfg=none ctermbg=8 
hi PmenuSbar               ctermfg=8    ctermbg=15

" html
hi htmlTag                 ctermfg=12
hi htmlEndTag              ctermfg=12
hi htmlTagName             ctermfg=11

" xml
hi xmlTag                 ctermfg=4
hi xmlEndTag              ctermfg=4
hi xmlTagName             ctermfg=3

" perl
hi perlSharpBang           ctermfg=10  cterm=none
hi perlStatement           ctermfg=13
hi perlStatementStorage    ctermfg=1
hi perlVarPlain            ctermfg=6
hi perlVarPlain2           ctermfg=11

" ruby
hi rubySharpBang           ctermfg=10  cterm=none

" mini buffer explorer
hi MBENormal               ctermfg=8
hi MBEChanged              ctermfg=1
hi MBEVisibleNormal        ctermfg=5
hi MBEVisibleNormalActive  ctermfg=13
hi MBEVisibleChanged       ctermfg=7
hi MBEVisibleChangedActive ctermfg=9

" rst
hi rstEmphasis             ctermfg=7   cterm=underline
