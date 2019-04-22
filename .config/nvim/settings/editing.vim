" General {
let g:mapleader=','   " Remap leader key to ,

set number            " Show line numbers
set numberwidth=5     " Width of number column
set relativenumber

set noshowcmd         " Don't show last command
set noshowmode        " Shows current vi mode in lower left

set clipboard=unnamed " Yank and paste with the system clipboard

set hidden            " Hides buffers instead of closing them

set autoread          " Automatically re-read file if a change was detected outside of vim
" }

" Tabs & Indentation {
set autoindent    " Auto-indent new lines
set expandtab     " Insert spaces when TAB is pressed.
set softtabstop=4 " Change number of spaces that a <Tab> counts for during editing ops
set shiftwidth=4  " Indentation amount for < and > commands.
set nowrap        " do not wrap long lines by default
set nocursorline  " Don't highlight current cursor line
set noruler       " Disable line/column number in status line
set cmdheight=1   " Only one line for command line
set smartindent   " Enable smart-indent
set smarttab      " Enable smart-tabs
" }

" Searh {
set ignorecase " ignore case when searching
set smartcase  " if the search string has an upper case letter in it, the search will be case sensitive
" }


" Completion {
set shortmess+=c      " Don't give completion messages like 'match 1 of 2' or 'The only match'
" }


" Backups {
set directory=/tmp                       " Directory for temp files
if has('persistent_undo')
  set undofile
  set undolevels=3000
  set undoreload=10000
endif
set backupdir=~/.local/share/nvim/backup " Don't put backups in current dir
set backup
set noswapfile
" }
