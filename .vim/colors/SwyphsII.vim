" Vim color file
" Converted from Textmate theme Swyphs II using Coloration v0.2.4 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Swyphs II"

hi Cursor  guifg=NONE guibg=#ffffff gui=NONE
hi Visual  guifg=NONE guibg=#bc1800 gui=NONE
hi CursorLine  guifg=NONE guibg=#080808 gui=NONE
hi CursorColumn  guifg=NONE guibg=#080808 gui=NONE
hi LineNr  guifg=#616161 guibg=#000000 gui=NONE
hi VertSplit  guifg=#252525 guibg=#252525 gui=NONE
hi MatchParen  guifg=#c1c1c1 guibg=NONE gui=NONE
hi StatusLine  guifg=#c1c1c1 guibg=#252525 gui=bold
hi StatusLineNC  guifg=#c1c1c1 guibg=#252525 gui=NONE
hi Pmenu  guifg=NONE guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#bc1800 gui=NONE
hi IncSearch  guifg=NONE guibg=#404040 gui=NONE
hi Search  guifg=NONE guibg=#404040 gui=NONE
hi Directory  guifg=NONE guibg=NONE gui=NONE
hi Folded  guifg=#575757 guibg=#000000 gui=NONE

hi Normal  guifg=#c1c1c1 guibg=#000000 gui=NONE
hi Boolean  guifg=#557474 guibg=NONE gui=NONE
hi Character  guifg=NONE guibg=NONE gui=NONE
hi Comment  guifg=#575757 guibg=NONE gui=italic
hi Conditional  guifg=#92577e guibg=NONE gui=NONE
hi Constant  guifg=NONE guibg=NONE gui=NONE
hi Define  guifg=NONE guibg=NONE gui=NONE
hi ErrorMsg  guifg=NONE guibg=NONE gui=NONE
hi WarningMsg  guifg=NONE guibg=NONE gui=NONE
hi Float  guifg=#d7d7d7 guibg=NONE gui=NONE
hi Function  guifg=NONE guibg=NONE gui=NONE
hi Identifier  guifg=#8d7d68 guibg=NONE gui=NONE
hi Keyword  guifg=NONE guibg=NONE gui=NONE
hi Label  guifg=NONE guibg=NONE gui=NONE
hi NonText  guifg=#323232 guibg=#080808 gui=NONE
hi Number  guifg=#d7d7d7 guibg=NONE gui=NONE
hi Operator  guifg=#608c6d guibg=NONE gui=NONE
hi PreProc  guifg=NONE guibg=NONE gui=NONE
hi Special  guifg=#c1c1c1 guibg=NONE gui=NONE
hi SpecialKey  guifg=#323232 guibg=#080808 gui=NONE
hi Statement  guifg=#92577e guibg=NONE gui=NONE
hi StorageClass  guifg=#8d7d68 guibg=NONE gui=NONE
hi String  guifg=#d7d7d7 guibg=NONE gui=NONE
hi Tag  guifg=NONE guibg=NONE gui=NONE
hi Title  guifg=#c1c1c1 guibg=NONE gui=bold
hi Todo  guifg=#575757 guibg=NONE gui=inverse,bold,italic
hi Type  guifg=NONE guibg=NONE gui=NONE
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi rubyClass  guifg=#92577e guibg=NONE gui=NONE
hi rubyFunction  guifg=NONE guibg=NONE gui=NONE
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol  guifg=NONE guibg=NONE gui=NONE
hi rubyConstant  guifg=#867e63 guibg=NONE gui=NONE
hi rubyStringDelimiter  guifg=#d7d7d7 guibg=NONE gui=NONE
hi rubyBlockParameter  guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=NONE guibg=NONE gui=NONE
hi rubyInclude  guifg=NONE guibg=NONE gui=NONE
hi rubyGlobalVariable  guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp  guifg=NONE guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubyEscape  guifg=NONE guibg=NONE gui=NONE
hi rubyControl  guifg=#92577e guibg=NONE gui=NONE
hi rubyClassVariable  guifg=NONE guibg=NONE gui=NONE
hi rubyOperator  guifg=#608c6d guibg=NONE gui=NONE
hi rubyException  guifg=NONE guibg=NONE gui=NONE
hi rubyPseudoVariable  guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass  guifg=#867e63 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod  guifg=#7d6068 guibg=NONE gui=NONE
hi rubyRailsARMethod  guifg=#7d6068 guibg=NONE gui=NONE
hi rubyRailsRenderMethod  guifg=#7d6068 guibg=NONE gui=NONE
hi rubyRailsMethod  guifg=#7d6068 guibg=NONE gui=NONE
hi erubyDelimiter  guifg=NONE guibg=NONE gui=NONE
hi erubyComment  guifg=#575757 guibg=NONE gui=italic
hi erubyRailsMethod  guifg=#7d6068 guibg=NONE gui=NONE
hi htmlTag  guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag  guifg=NONE guibg=NONE gui=NONE
hi htmlTagName  guifg=NONE guibg=NONE gui=NONE
hi htmlArg  guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=NONE guibg=NONE gui=NONE
hi javaScriptFunction  guifg=#8d7d68 guibg=NONE gui=NONE
hi javaScriptRailsFunction  guifg=#7d6068 guibg=NONE gui=NONE
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor  guifg=NONE guibg=NONE gui=NONE
hi yamlAlias  guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=NONE guibg=NONE gui=NONE
hi cssURL  guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName  guifg=#7d6068 guibg=NONE gui=NONE
hi cssColor  guifg=NONE guibg=NONE gui=NONE
hi cssPseudoClassId  guifg=#8b8b8b guibg=NONE gui=NONE
hi cssClassName  guifg=#8b8b8b guibg=NONE gui=NONE
hi cssValueLength  guifg=#d7d7d7 guibg=NONE gui=NONE
hi cssCommonAttr  guifg=NONE guibg=NONE gui=NONE
hi cssBraces  guifg=NONE guibg=NONE gui=NONE
