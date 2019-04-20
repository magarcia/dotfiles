nnoremap <C-g> :Rg<Cr>
nnoremap <C-p> :Files<Cr>
nnoremap <leader>p :Files<Cr>
nnoremap <leader>a :Ag<Cr>
nnoremap <leader>r :Rg<Cr>
nnoremap <leader>b :Buffers<Cr>
nnoremap <leader>c :Commits<Cr>
nnoremap <leader>T :Tags<Cr>

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


