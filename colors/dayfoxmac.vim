" dayfox.vim — Vim-only simulated Dayfox with truecolor + cterm fallback

if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "dayfoxmac"
set background=light

" --- Palette (hex) ---
let s:bg       = "#f6f2ee"
let s:bg_alt   = "#eae8e0"
let s:fg       = "#3d2b5a"
let s:fg_alt   = "#5c4a72"
let s:blue     = "#3d5a80"
let s:cyan     = "#0077b6"
let s:green    = "#2a9d8f"
let s:orange   = "#e07a5f"
let s:yellow   = "#e3b341"
let s:red      = "#d1495b"
let s:magenta  = "#9c5f9c"
let s:comment  = "#8e8a80"

" --- 256-color fallbacks (approx) ---
let s:bg_cterm      = 230
let s:bg_alt_cterm  = 254
let s:fg_cterm      = 60
let s:fg_alt_cterm  = 96
let s:blue_cterm    = 67
let s:cyan_cterm    = 31
let s:green_cterm   = 36
let s:orange_cterm  = 173
let s:yellow_cterm  = 179
let s:red_cterm     = 167
let s:magenta_cterm = 133
let s:comment_cterm = 244

function! s:HI(group, fg, bg, gui, ctermfg, ctermbg, cattr) abort
  if has('termguicolors')
    set termguicolors
  endif
  if has('termguicolors') && &termguicolors
    let l:cmd = 'hi ' . a:group
    if a:fg !=# '' | let l:cmd .= ' guifg=' . a:fg | endif
    if a:bg !=# '' | let l:cmd .= ' guibg=' . a:bg | endif
    if a:gui !=# '' | let l:cmd .= ' gui='   . a:gui | endif
    execute l:cmd
  else
    let l:cmd = 'hi ' . a:group
    if a:ctermfg !=# '' | let l:cmd .= ' ctermfg=' . a:ctermfg | endif
    if a:ctermbg !=# '' | let l:cmd .= ' ctermbg=' . a:ctermbg | endif
    if a:cattr   !=# '' | let l:cmd .= ' cterm='   . a:cattr   | endif
    execute l:cmd
  endif
endfunction

" --- UI ---
call s:HI('Normal',        s:fg,      s:bg,      '',     s:fg_cterm,      s:bg_cterm,      '')
call s:HI('CursorLine',    '',        s:bg_alt,  '',     '',              s:bg_alt_cterm,  '')
call s:HI('CursorColumn',  '',        s:bg_alt,  '',     '',              s:bg_alt_cterm,  '')
call s:HI('LineNr',        s:comment, s:bg,      '',     s:comment_cterm, s:bg_cterm,      '')
call s:HI('CursorLineNr',  s:orange,  s:bg,      'bold', s:orange_cterm,  s:bg_cterm,      'bold')
call s:HI('VertSplit',     s:comment, s:bg,      '',     s:comment_cterm, s:bg_cterm,      '')
call s:HI('StatusLine',    s:fg,      s:bg_alt,  'bold', s:fg_cterm,      s:bg_alt_cterm,  'bold')
call s:HI('StatusLineNC',  s:comment, s:bg_alt,  '',     s:comment_cterm, s:bg_alt_cterm,  '')
call s:HI('Pmenu',         s:fg,      s:bg_alt,  '',     s:fg_cterm,      s:bg_alt_cterm,  '')
call s:HI('PmenuSel',      s:bg,      s:blue,    '',     s:bg_cterm,      s:blue_cterm,    '')
call s:HI('Search',        s:bg,      s:yellow,  '',     s:bg_cterm,      s:yellow_cterm,  '')
call s:HI('IncSearch',     s:bg,      s:orange,  '',     s:bg_cterm,      s:orange_cterm,  '')
call s:HI('Visual',        '',        s:cyan,    '',     '',              s:cyan_cterm,    '')
call s:HI('MatchParen',    s:red,     '',        'bold', s:red_cterm,     '',              'bold')

" --- Syntax ---
call s:HI('Comment',       s:comment, '',        'italic', s:comment_cterm, '',            'italic')
call s:HI('Constant',      s:blue,    '',        '',       s:blue_cterm,    '',            '')
call s:HI('String',        s:green,   '',        '',       s:green_cterm,   '',            '')
call s:HI('Character',     s:green,   '',        '',       s:green_cterm,   '',            '')
call s:HI('Number',        s:orange,  '',        '',       s:orange_cterm,  '',            '')
call s:HI('Boolean',       s:orange,  '',        '',       s:orange_cterm,  '',            '')
call s:HI('Identifier',    s:blue,    '',        '',       s:blue_cterm,    '',            '')
call s:HI('Function',      s:magenta, '',        '',       s:magenta_cterm, '',            '')
call s:HI('Statement',     s:red,     '',        '',       s:red_cterm,     '',            '')
call s:HI('Conditional',   s:red,     '',        '',       s:red_cterm,     '',            '')
call s:HI('Repeat',        s:red,     '',        '',       s:red_cterm,     '',            '')
call s:HI('Label',         s:yellow,  '',        '',       s:yellow_cterm,  '',            '')
call s:HI('Operator',      s:fg,      '',        '',       s:fg_cterm,      '',            '')
call s:HI('Keyword',       s:magenta, '',        '',       s:magenta_cterm, '',            '')
call s:HI('Exception',     s:red,     '',        '',       s:red_cterm,     '',            '')
call s:HI('PreProc',       s:orange,  '',        '',       s:orange_cterm,  '',            '')
call s:HI('Type',          s:blue,    '',        '',       s:blue_cterm,    '',            '')
call s:HI('StorageClass',  s:blue,    '',        '',       s:blue_cterm,    '',            '')
call s:HI('Structure',     s:blue,    '',        '',       s:blue_cterm,    '',            '')
call s:HI('Typedef',       s:blue,    '',        '',       s:blue_cterm,    '',            '')
call s:HI('Special',       s:orange,  '',        '',       s:orange_cterm,  '',            '')
call s:HI('Delimiter',     s:fg,      '',        '',       s:fg_cterm,      '',            '')
call s:HI('SpecialComment',s:comment, '',        '',       s:comment_cterm, '',            '')
call s:HI('Underlined',    s:blue,    '',        'underline', s:blue_cterm, '',           'underline')
call s:HI('Todo',          s:orange,  s:bg_alt,  'bold',  s:orange_cterm,  s:bg_alt_cterm, 'bold')

" --- Diagnostics (basic) ---
call s:HI('Error',         s:red,     '',        '',       s:red_cterm,     '',            '')
call s:HI('WarningMsg',    s:orange,  '',        '',       s:orange_cterm,  '',            '')
call s:HI('DiffAdd',       '',        "#d2f8d2", '',       '',              194,           '')
call s:HI('DiffChange',    '',        "#fdf4c1", '',       '',              229,           '')
call s:HI('DiffDelete',    '',        "#f8d2d2", '',       '',              217,           '')
call s:HI('DiffText',      '',        "#b3e6ff", '',       '',              153,           '')

