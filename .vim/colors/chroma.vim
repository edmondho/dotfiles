"
" File: chroma.vim
" Author: edmondho
" Modified: 2011-12-13
"

" light yellow: #fbe983
" yellow: #ffd76e
" light blue: #b6cff5
" blue: #4986e7
" orange: #ffad46
" orange-red: #ff7537
" orangy red: #fb4c2f
" light green: #42d692
" green: #16a765
" teal: #2da2bb

hi clear
set background=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "chroma"

"
" Syntax highlight groups
"
hi Comment        guifg=#999999 gui=italic

hi Constant       guifg=#fb4c2f
"hi String         guifg=#fb4c2f
"hi Character      guifg=#fb4c2f
"hi Number         guifg=#fb4c2f
"hi Boolean        guifg=#fb4c2f
"hi Float          guifg=#fb4c2f

hi Identifier     guifg=#ffd76e gui=bold
hi Function       guifg=#ffd76e gui=bold

hi Statement      guifg=#ffd76e gui=bold
"hi Conditional    guifg=#ffd76e
"hi Repeat         guifg=#ffd76e
"hi Label          guifg=#ffd76e
"hi Operator       guifg=#ffffff gui=bold
"hi Keyword        guifg=#ffd76e
"hi Exception      guifg=#ffd76e

hi PreProc        guifg=#ffd76e gui=italic
"hi Include        guifg=#ffd76e gui=italic
"hi Define         guifg=#ffd76e gui=italic
"hi Macro          guifg=#ffd76e gui=italic
"hi PreCondit      guifg=#ffd76e gui=italic

hi Type           guifg=#ffd76e gui=bold
"hi StorageClass   guifg=#ffffff
"hi Structure      guifg=#ffffff
"hi Typedef        guifg=#ffffff

hi Special        guifg=#ffd76e
"hi SpecialChar    guifg=#ffffff
"hi Tag            guifg=#ffffff
"hi Delimiter      guifg=#ffffff
"hi SpecialComment guifg=#ffffff
"hi Debug          guifg=#ffffff

hi Underlined     guifg=#4986e7
hi Ignore         guifg=#ffffff
hi Error          guifg=#ffffff guibg=#cc0000 gui=bold
hi Todo           guifg=#000000 guibg=#ffd76e gui=bold


"
" GUI highlight groups
"
hi Cursor         guifg=#ffffff guibg=#4986e7
hi Normal         guifg=#eeeeee guibg=#000000
hi Visual         guibg=#000000 gui=reverse 
hi Search         guifg=#000000 guibg=#cccccc
hi Title          guifg=#ffffff gui=bold

hi StatusLine     guifg=#000000 guibg=#ffffff gui=bold
hi StatusLineNC   guifg=#ffffff guibg=#333333
hi VertSplit      guibg=#ffffff guifg=#333333 gui=bold
hi ColorColumn    guibg=#111111
hi CursorLine     guibg=#111111

hi LineNr         guifg=#666666
hi MatchParen     guibg=#FFFFFF guifg=#000000

hi MoreMsg        guifg=#ffffff gui=bold
hi ModeMsg        guifg=#000000 guibg=#ffffff gui=bold
hi ErrorMsg       guifg=#ffffff guibg=#cc0000
hi WarningMsg     guifg=#cc0000

hi Directory      guifg=#ffffff

hi NonText        guifg=#ffffff gui=bold

hi SpecialKey     guifg=#ffffff

hi Question       guifg=#ffffff gui=bold


"
" JavaScript (cf. ~/.vim/syntax/javascript.vim)
"
hi javaScriptBrowserObjects       guifg=#ffd76e gui=bold

hi javaScriptDOMObjects           guifg=#ffd76e gui=bold
hi javaScriptDOMMethods           guifg=#ffd76e
hi javaScriptDOMProperties        guifg=#ffd76e

hi javaScriptAjaxObjects          guifg=#ffd76e
hi javaScriptAjaxMethods          guifg=#ffd76e
hi javaScriptAjaxProperties       guifg=#ffd76e

hi javaScriptFuncName             guifg=#ffffff
hi javaScriptHtmlElemProperties   guifg=#ffd76e
hi javaScriptEventListenerKeyword guifg=#ffd76e

hi javaScriptLabel                guifg=#ffffff
hi javaScriptGlobalObjects        guifg=#ffd76e gui=bold

hi javaScriptNull                 guifg=#fb4c2f
hi javaScriptUndefined            guifg=#fb4c2f


"
" HTML
"
hi htmlArg guifg=#ffd76e
