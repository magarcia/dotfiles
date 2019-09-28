"vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
set nocompatible

scriptencoding utf-8
source ~/.config/nvim/plugins.vim


" Function to source all .vim files in directory {
function! SourceDirectory(file)
  for s:fpath in split(globpath(a:file, '*.vim'), '\n')
    exe 'source' s:fpath
  endfor
endfunction
" }

call SourceDirectory('~/.vim/settings')

" Enable python support
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Work with .vimrc
nnoremap <leader>s :source $MYVIMRC<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source $MYVIMRC
	autocmd BufWritePost init.vim source $MYVIMRC
augroup END


hi! StatusLineNC  ctermfg=NONE ctermbg=NONE cterm=NONE

let g:python2_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
