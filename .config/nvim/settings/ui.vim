" Editor theme
if has('termguicolors')
  set termguicolors
endif
syntax enable
set background=dark

set mouse=a
try
  let g:nord_italic = 1
  let g:nord_underline = 1
  let g:nord_italic_comments = 1
  let g:nord_uniform_status_lines = 1
  let g:nord_uniform_diff_background = 1
  colorscheme nord
endtry


" Change vertical split character to be a space (essentially hide it)
set fillchars+=vert:\|

" Set preview window to appear at bottom
set splitbelow

" Don't dispay mode in command line (airilne already shows it)
set noshowmode
