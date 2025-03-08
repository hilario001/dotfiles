" TODO: Make a function that takes an argument and take it as the value of the
" color that the colorscheme uses and then takes effect immediately.
" TODO: Make a function that takes an argument and take it as the value of the
" style of the font which the color takes effect and then takes effect
" immediately.
" possible name "c1": uses one cool color depending on the user's mood
" the one color is set to bold (regular sometimes)
" and applies to statements such as
" conditional:	if, then, else, endif, switch, etc.
" repeat:       for, do, while, etc.
" label:	    case, default, etc.
" exception	    try, catch, throw

hi clear
if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'c1'

" set color of current line number
"set cursorline
"hi CursorLineNR     guifg=#ffee32  guibg=NONE      gui=NONE    cterm=NONE

" bold/regular green
"hi statement        guifg=#79bf46   cterm=bold      gui=bold
"hi statement        guifg=#79bf46  cterm=NONE      gui=NONE
hi statement        guifg=#b6ccfe  cterm=NONE      gui=NONE

hi Normal           guifg=#edf6f9   guibg=#040404
hi LineNr           guifg=#6b6a70
hi CursorLine       guifg=NONE      guibg=NONE      gui=NONE    cterm=NONE
hi MatchParen       guifg=#ffffff   guibg=#3e445e 
hi StatusLineNc     guifg=#0A0A0A   guibg=LightGrey " bug: fg is bg, bg is fg
hi StatusLine       guifg=#0D0D0D   guibg=LightGrey
hi NonText          guifg=bg
hi Pmenu            guifg=DarkGrey  guibg=#1c1c1c
hi PmenuSel         guifg=#79bf46   guibg=#020202
hi Todo             guifg=#edf6f9   guibg=#040404   cterm=bold  gui=bold
hi Error            guifg=#edf6f9   guibg=#9d0208
"hi String           guifg=#b6ccfe

hi! link Operator           Normal
hi! link Identifier         Normal
hi! link PreProc            Normal
hi! link Constant           Normal
hi! link Keyword            Normal
hi! link Delimiter          Normal
hi! link Number             Normal
hi! link Special            Normal
hi! link Type               Normal
hi! link TabLineFill        Normal
hi! link Title              Normal
hi! link CursorLineNR       LineNr
hi! link Comment            LineNr
hi! link Directory          LineNr
hi! link Conceal            LineNr
hi! link VertSplit          LineNr
hi! link StatusLineTerm     StatusLine
hi! link StatusLineTermNC   StatusLineNC
hi! link SpellBad           Error
hi! link ErrorMsg           Error           
hi! link Question           PmenuSel
hi! link IncSearch          QuickFixLine
hi! link StatusLineNc       WinBarNC 
hi! link StatusLine         WinBar
hi! link QuickFixLine       Normal 
hi! link TabLine            WinBar
hi! link TabLineNc          WinBarNC
hi! link TabLineSel         statement
hi! link TabLineFill        WinBarNC
