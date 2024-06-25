" Backup of old legacy color theme use in Putty


hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'mhputty'

syntax on
colorscheme default
set background=light

hi link EasyMotionTarget Statement
hi link EasyMotionTarget2First Statement
hi link EasyMotionTarget2Second Statement
hi link EasyMotionShade Comment


" all desert colorscheme settings hardcoded directly here
hi Normal	guifg=White guibg=grey20
hi Cursor	guibg=indianred guifg=khaki
hi VertSplit	guibg=#c2bfa5 guifg=grey50 gui=none
hi Folded	guibg=grey30 guifg=gold
hi FoldColumn	guibg=grey30 guifg=tan
hi IncSearch	guifg=slategrey guibg=khaki
hi ModeMsg	guifg=goldenrod
hi MoreMsg	guifg=SeaGreen
hi NonText	guifg=LightBlue guibg=grey30
hi Question	guifg=springgreen
hi Search	guibg=grey30 guifg=#dfffdf
hi SpecialKey	guifg=yellowgreen
hi StatusLine	guibg=#c2bfa5 guifg=black gui=none
hi StatusLineNC	guibg=#c2bfa5 guifg=grey50 gui=none
hi Title	guifg=indianred
hi Visual	gui=none guifg=khaki guibg=olivedrab
hi WarningMsg	guifg=salmon
hi MatchParen guibg=grey30 guifg=#dfffdf
hi Comment	guifg=SkyBlue
hi Constant	guifg=#ffa0a0
hi Identifier	guifg=palegreen
hi Statement	guifg=khaki
hi PreProc	guifg=indianred
hi Type		guifg=darkkhaki
hi Special	guifg=navajowhite
hi Ignore	guifg=grey40
hi Todo		guifg=orangered guibg=yellow2
hi SpecialKey	ctermfg=darkgreen
hi NonText	cterm=bold ctermfg=darkblue
hi Directory	ctermfg=darkcyan
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1
hi IncSearch	cterm=NONE ctermfg=yellow ctermbg=green
hi Search	cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg	ctermfg=darkgreen
hi ModeMsg	cterm=NONE ctermfg=brown
hi LineNr	ctermfg=3
hi Question	ctermfg=green
hi StatusLine	cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit	cterm=reverse
hi Title	ctermfg=5
hi Visual	cterm=reverse
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=1
hi WildMenu	ctermfg=0 ctermbg=3
hi Folded	ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	ctermfg=darkgrey ctermbg=NONE
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1
hi Comment	ctermfg=darkcyan
hi Constant	ctermfg=brown
hi Special	ctermfg=5
hi Identifier	ctermfg=6
hi Statement	ctermfg=3
hi PreProc	ctermfg=5
hi Todo		ctermfg=red ctermbg=NONE
hi Type		ctermfg=2
hi Underlined	cterm=underline ctermfg=5
hi Ignore	cterm=bold ctermfg=7
hi Ignore	ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1


" adjust solarized: make comments italic
hi Comment ctermfg=grey guifg=#93a1a1 cterm=italic gui=italic

" fix visual selection background color
" see all options: so $VIMRUNTIME/syntax/hitest.vim
" https://jonasjacek.github.io/colors/
" ctermfg= ctermbg= cterm=bold
hi Visual ctermbg=120 guibg=Blue
hi Comment ctermfg=246 guifg=Grey58
hi LineNr ctermfg=249 guifg=Grey70
hi SpecialKey ctermfg=Blue guifg=Blue
" things like for / in in Python
hi Statement ctermfg=Blue cterm=bold guifg=Blue gui=bold
" things in brackets in python
hi Constant ctermfg=28  guifg=Green4 "28 /172
hi Directory ctermbg=123 guibg=DarkSlateGray1
" things like print etc in python
hi Identifier ctermfg=4 guifg=Blue
" things like Visual/identiier, count(*) in sql etc
hi Type ctermfg=Blue guifg=bLUE gui=none
" things like system variables etc / where in sql
hi Special ctermfg=4  guifg=Blue
" others
hi Question ctermfg=172 guifg = Orange3
" import / from ... in Pyhton
hi PreProc ctermfg=Blue guifg=Blue
" others
hi Search ctermfg=White ctermbg=63 guifg=White guibg=RoyalBlue1
" hi StatusLine ctermbg=DarkGrey
" hi StatusLineNC ctermbg=DarkGrey
" hi VertSplit ctermbg=DarkGrey

hi DiffAdd    ctermfg=Black ctermbg=40 guifg=Black guibg=Green3
hi DiffChange ctermfg=240 ctermbg=51 guifg=Grey35 guibg=Cyan1
hi DiffDelete cterm=none ctermfg=240 ctermbg=51 guifg=Grey35 guibg=Cyan1
hi DiffText   cterm=bold ctermfg=White ctermbg=Blue guifg=White guibg=Blue

" hi DiffAdd ctermfg=White
" hi DiffChange ctermfg=White
" hi DiffDelete ctermbg=Grey

hi IncSearch  ctermfg=White guifg=White

" Syntastic error colors
" hi SpellBad cterm=bold ctermbg=172 ctermfg=Black
" hi SpellCap ctermfg=Yellow ctermbg=Blue

" colors for gvim - optino for bold/normal: gui=normal/bold cterm=normal/bold
hi Normal guifg=Black guibg=White
hi Nontext guifg=Black guibg=White
hi Cursor         guifg=White           guibg=Grey50

