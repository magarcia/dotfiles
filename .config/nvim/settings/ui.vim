" Editor theme
if has('termguicolors')
  set termguicolors
endif
syntax enable
set background=dark

set mouse=a
try
  "colorscheme agila
  "colorscheme space-vim-dark
  colorscheme codedark

  " Transparent background
  hi Normal     ctermbg=NONE guibg=NONE
  hi LineNr     ctermbg=NONE guibg=NONE
  hi SignColumn ctermbg=NONE guibg=NONE

  hi Comment guifg=#5C6370 ctermfg=59     " Grey comments
endtry

let g:signify_sign_delete = '-'
let g:signify_sign_change = '~'


" Change vertical split character to be a space (essentially hide it)
set fillchars+=vert:\|

" Set preview window to appear at bottom
set splitbelow

" Don't dispay mode in command line (airilne already shows it)
set noshowmode
