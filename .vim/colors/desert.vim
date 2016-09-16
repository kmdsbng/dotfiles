" Vim color file
" Maintainer: Hans Fugal <hans@fugal.net>
" Last Change:  $Date: 2003/07/24 00:57:11 $
" Last Change:  $Date: 2003/07/24 00:57:11 $
" URL:    http://hans.fugal.net/vim/colors/desert.vim
" Version:  $Id: desert.vim,v 1.7 2003/07/24 00:57:11 fugalh Exp $

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
let g:colors_name="desert"

hi Normalguifg=White guibg=grey20

" highlight groups
hi Cursorguibg=khaki guifg=slategrey
"hi CursorIM
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi VertSplitguibg=#c2bfa5 guifg=grey50 gui=none
hi Foldedguibg=grey30 guifg=gold
hi FoldColumnguibg=grey30 guifg=tan
hi IncSearchguifg=slategrey guibg=khaki
"hi LineNr
hi ModeMsgguifg=goldenrod
hi MoreMsgguifg=SeaGreen
hi NonTextguifg=LightBlue guibg=grey30
hi Questionguifg=springgreen
hi Searchguibg=peru guifg=wheat
hi SpecialKeyguifg=yellowgreen
hi StatusLineguibg=#c2bfa5 guifg=black gui=none
hi StatusLineNCguibg=#c2bfa5 guifg=grey50 gui=none
hi Titleguifg=indianred
hi Visualgui=none guifg=khaki guibg=olivedrab
"hi VisualNOS
hi WarningMsgguifg=salmon
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Commentguifg=SkyBlue
hi Constantguifg=#ffa0a0
hi Identifierguifg=palegreen
hi Statementguifg=khaki
hi PreProcguifg=indianred
hi Typeguifg=darkkhaki
hi SpecialKeyguifgguifg=navajowhite
"hi Underlined
hi Ignoreguifg=grey40
"hi Error
hi Todoguifg=orangered guibg=yellow2

" color terminal definitions
hi SpecialKeyguifgctermfg=darkgreen
hi NonTextguifgcterm=bold ctermfg=darkblue
hi Directoryctermfg=darkcyan
hi ErrorMsgcterm=bold ctermfg=7 ctermbg=1
hi IncSearchguifgcterm=NONE ctermfg=yellow ctermbg=green
hi Searchguibgcterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsgguifgctermfg=darkgreen
hi ModeMsgguifgcterm=NONE ctermfg=brown
hi LineNrctermfg=3
hi Questionguifgctermfg=green
hi StatusLineguibgcterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplitguibgcterm=reverse
hi Titleguifgctermfg=5
hi Visualguicterm=reverse
hi VisualNOScterm=bold,underline
hi WarningMsgguifgctermfg=1
hi WildMenuctermfg=0 ctermbg=3
hi Foldedguibgctermfg=darkgrey ctermbg=NONE
hi FoldColumnguibgctermfg=darkgrey ctermbg=NONE
hi DiffAddctermbg=4
hi DiffChangectermbg=5
hi DiffDeletecterm=bold ctermfg=4 ctermbg=6
hi DiffTextcterm=bold ctermbg=1
hi Commentguifgctermfg=darkcyan
hi Constantguifgctermfg=brown
hi SpecialKeyguifgctermfg=5
hi Identifierguifgctermfg=6
hi Statementguifgctermfg=3
hi PreProcguifgctermfg=5
hi Typectermfg=2
hi Underlinedcterm=underline ctermfg=5
hi Ignoreguifgcterm=bold ctermfg=7
hi Ignoreguifgctermfg=darkgrey
hi ErrorMsgcterm=bold ctermfg=7 ctermbg=1


"vim: sw=4

