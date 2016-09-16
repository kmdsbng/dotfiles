" Vim color file
" Maintainer:   Hans Fugal <hans@fugal.net>
" Last Change:  $Date: 2003/05/06 16:37:49 $
" URL:    http://hans.fugal.net/vim/colors/desert.vim

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
  syntax reset
    endif
endif
let g:colors_name="asmdev2"

"hi Normalguifg=white guibg=#501808

" highlight groups
"hi Cursorguibg=khaki guifg=slategrey
"hi CursorIM
hi Directory guifg=#f0c000 guibg=#400800
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText guibg=white
hi ErrorMsg guifg=#f0c000 guibg=#300800
"hi VertSplitguibg=#400800 guifg=#400800 gui=none
"hi Foldedguifg=#907050 guibg=#582010
" hi FoldColumnguibg=grey30 guifg=tan
" hi IncSearchguifg=slategrey guibg=khaki
hi LineNr guifg=#907050
hi Prompt guibg=white
"hi ModeMsgguifg=goldenrod guibg=white
"hi MoreMsgguifg=SeaGreen guibg=black
"hi NonTextguifg=#400800 guibg=#502818
"hi Questionguifg=black
"hi Searchguibg=black guifg=wheat
"hi SpecialKeyguifg=yellowgreen
"hi StatusLineguibg=#300600 guifg=grey70 gui=none
"hi StatusLineNCguibg=#400800 guifg=grey50 gui=none
"hi Titleguifg=indianred guibg=black
"hi Visualgui=none guifg=#400800 guibg=#602818
"hi VisualNOS
"hi WarningMsgguifg=salmon guibg=black
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment guifg=#804838
hi Constant guifg=#d0b020
hi Type guifg=#a08070
"guibg=#603020
hi Identifier guifg=#a08070 gui=italic
"guibg=#603020
hi Statement guifg=#a08000 gui=bold 
"guibg=#603020
" hi Statement guifg=khaki
hi PreProc guifg=indianred
"hi Type guifg=darkkhaki
hi SpecialKeyguifg guifg=navajowhite
"hi Underlined
hi Ignore guifg=grey40
"hi Error
hi Todo guifg=white guibg=#300800 gui=bold

" color terminal definitions
hi SpecialKeyguifg ctermfg=darkgreen
hi NonTextguifg cterm=bold ctermfg=darkblue
hi Directory ctermfg=darkcyan
hi ErrorMsg cterm=bold ctermfg=7 ctermbg=1
hi IncSearchguifg cterm=NONE ctermfg=yellow ctermbg=green
hi Searchguibg cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsgguifg ctermfg=darkgreen
hi ModeMsgguifg cterm=NONE ctermfg=brown
hi LineNr ctermfg=3
hi Questionguifg ctermfg=green
hi StatusLineguibg cterm=bold,reverse
hi StatusLineNC  cterm=reverse
hi VertSplitguibg cterm=reverse
hi Titleguifg ctermfg=5
hi Visualgui cterm=reverse
hi VisualNOS cterm=bold,underline
hi WarningMsgguifg ctermfg=1
hi WildMenu ctermfg=0 ctermbg=3
hi Foldedguifg ctermfg=darkgrey ctermbg=NONE
hi FoldColumnguibg ctermfg=darkgrey ctermbg=NONE
hi DiffAdd ctermbg=4
hi DiffChange ctermbg=5
hi DiffDelete cterm=bold ctermfg=4 ctermbg=6
hi DiffText cterm=bold ctermbg=1
hi Comment ctermfg=darkcyan
hi Constant ctermfg=brown
hi SpecialKeyguifg ctermfg=5
hi Identifier ctermfg=6
hi Statement ctermfg=3
hi PreProc ctermfg=5
hi Type ctermfg=2
hi Underlined cterm=underline ctermfg=5
hi Ignore cterm=bold ctermfg=7
hi ErrorMsg cterm=bold ctermfg=7 ctermbg=1


"vim: sw=4

hi Pmenu ctermbg=DarkBlue
hi PmenuSel ctermbg=LightBlue
hi PmenuSbar ctermbg=Yellow


