hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "murmur"

if has("termguicolors")
  set termguicolors
endif

"hi Normal guifg=#E7D6DE guibg=#170A11
"hi Normal guifg=#E7D6DE guibg=#090407
hi Normal guifg=#E7D6DE guibg=#07070b
hi StatusModeNormal guifg=#B2C7CD guibg=#1F3A42
hi StatusModeInsert guifg=#AFC4AC guibg=#2E3F2C
hi StatusModeVisual guifg=#D2A3CC guibg=#502A3F
hi StatusModeReplace guifg=#D8AA92 guibg=#552C16
hi StatusModeCommand guifg=#D2A3CC guibg=#502A3F
hi StatusModeSelect guifg=#D2A3CC guibg=#502A3F
hi StatusModeTerminal guifg=#D19EAF guibg=#532736
hi StatusNote guifg=#baa9b1 guibg=#362F37
hi StatusLine guifg=#BB96A7 guibg=#240F1A
hi StatusLineNC guifg=#BB96A7 guibg=#240F1A
hi WinSeparator guifg=#291A2D
hi CursorLine guibg=#5E5161
hi CursorLineNr guifg=#5E5161
hi LineNr guifg=#423545
hi Visual guibg=#502A3F
hi Search guifg=#2aafe8 guibg=#12242e
hi CurSearch guifg=#2ae8ac guibg=#173d37
hi NonText guifg=#423545

hi Comment guifg=#726376
hi PreProc guifg=#CA8EA2
hi Keyword guifg=#AFC4AC
hi Function guifg=#B2C7CD
hi String guifg=#D2A3CC
hi Number guifg=#D8AA92
hi Identifier guifg=#E7D6DE

hi! link Pmenu StatusLine 
hi! link PmenuSel Visual 
hi! link PmenuThumb Visual 

hi! link asmDirective PreProc
hi! link asmLabel Function 

hi! link OilDir PreProc
hi! link OilDirHidden Comment
hi! link OilFileHidden Comment

hi! link Type Normal 
hi! link Boolean Normal 
hi! link Constant Normal
hi! link Delimiter Normal
hi! link Special Keyword 
