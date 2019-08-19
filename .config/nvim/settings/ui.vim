" Editor theme
if has('termguicolors')
  set termguicolors
endif
syntax enable
set background=dark

set mouse=a
try
  colorscheme agila
endtry

let g:signify_sign_delete = '-'
let g:signify_sign_change = '~'


" Change vertical split character to be a space (essentially hide it)
set fillchars+=vert:\|

" Set preview window to appear at bottom
set splitbelow

" Don't dispay mode in command line (airilne already shows it)
set noshowmode
