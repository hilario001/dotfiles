" Name: cs

if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'cs'

"hi Normal               guifg=#edf6f9   guibg=#040404
hi Normal               guifg=#d8d8d8   guibg=#181818
hi LineNr               guifg=#6b6a70
hi MatchParen           guifg=#ffffff   guibg=#3e445e 
hi StatusLineNc         guifg=#0A0A0A   guibg=LightGrey " bug: fg is bg, bg is fg
hi StatusLine           guifg=#0D0D0D   guibg=LightGrey
hi NonText              guifg=bg        guibg=bg
hi Pmenu                guifg=DarkGrey  guibg=#1c1c1c
hi PmenuSel             guifg=#79bf46   guibg=#020202
hi Todo                 guifg=#d8d8d8   guibg=#181818   cterm=bold      gui=bold
hi Error                guifg=#edf6f9   guibg=#9d0208
hi TabLineSel           guifg=#79bf46
hi TabLine              guifg=LightGrey guibg=bg        cterm=none
hi QuickFixLine         guifg=#040404   guibg=#ffee32   cterm=bold      gui=bold
hi WildMenu             guifg=fg        guibg=bg        cterm=bold      gui=bold
hi String               guifg=#79bf46                   
hi Directory            guifg=fg                        cterm=bold      gui=bold
hi PreProc              guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi Type                 guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi Label                guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE

set bg=dark
if &bg == "light"
        hi Normal           guibg=#f3f4f5  guifg=#565e65
        hi NonText          guifg=#ffffd7
        "hi statement        guifg=#000000   cterm=bold       gui=bold
else
        hi NonText          guifg=bg
        "hi statement        guifg=#ffee32
endif

hi! link Operator               Normal
hi! link Identifier             Normal
hi! link Constant               Normal
hi! link Keyword                Normal
hi! link Delimiter              Normal
hi! link Number                 Normal
hi! link Special                Normal
hi! link TabLineFill            Normal
hi! link Title                  Normal
hi! link IncSearch              Normal
hi! link Folded                 Normal
hi! link Statement              Normal
hi! link CursorLine             Normal
hi! link CursorLineNR           LineNr
hi! link Comment                LineNr
hi! link Conceal                LineNr
hi! link VertSplit              LineNr
hi! link StatusLineTerm         StatusLine
hi! link StatusLineTermNC       StatusLineNC
hi! link SpellBad               Error
hi! link ErrorMsg               Error           
hi! link Question               PmenuSel

" Monochrome colorscheme
"hi! link statement              Normal
hi! link String                 Normal
