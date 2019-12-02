" General {
" Allows you to save files you opened without write permissions via sudo
cmap w!! w !sudo tee %

" Delete current visual selection and dump in black hole buffer before pasting
" Used when you want to paste over something without it getting copied to
" Vim's default buffer
vnoremap <leader>p "_dP

" }

" TagbarToggle {
"  <leader>t - Toggle Tagbar on/off
nmap <leader>a :TagbarToggle<CR>
" }


" EasyAlign {
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }


" NERDTree {
function! SmartNERDTree()
    if @% == "" || @% == "NERD_tree_1"
        NERDTreeToggle
    else
        NERDTreeFind
    endif
endfun
"  <C-n> - Toggle NERDTree on/off
"map <C-n> :NERDTreeToggle<CR>
map <C-n> :call SmartNERDTree()<CR>
"  <leader>n - Toggle NERDTree on/off
nmap <leader>n :NERDTreeToggle<CR>
"  <leader>f - Opens current file location in NERDTree
nmap <leader>f :NERDTreeFind<CR>

"   <Space> - PageDown
"noremap <Space> <PageDown>
"   -       - PageUp
"noremap - <PageUp>
" }

"   <leader>r - Toggle relative numbers
function! NumberToggle()
  if(&rnu == 1)
    set nornu
  else
    set rnu
  endif
endfunc

nnoremap <leader>r :call NumberToggle()<cr>

" NERDCommenter {
"  <leader>cc - Comment out the current line or text selected
"  <leader>cu - Uncomments the selected line(s)
"  <leader>c<space> - Toggles the comment state of the selected line(s)
" }


" Denite {
"   ;         - Browser currently open buffers
nmap ; :Denite buffer -winrow=1<CR>

"   <leader>t - Browse list of files in current directory
"   <C-p>     - Browse list of files in current directory
nmap <leader>t :Denite file/rec -winrow=1 -start-filter<CR>
nmap <leader>p :Denite file/rec -winrow=1 -start-filter<CR>
nmap <C-p> :Files<CR>


"   <leader>g - Search current directory for occurences of given term and close window if no results
nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR>

"   <leader>j - Search current directory for occurences of word under cursor
"nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR>
nnoremap <leader>j :execute 'Rg' expand('<cword>')<CR>
" }


" coc.nvim {
"   <leader>dd - Go to definition
nmap <silent> <leader>dd <Plug>(coc-definition)
"   <leader>dr - Find references
nmap <silent> <leader>dr <Plug>(coc-references)
"   <leader>dj - Go to implementeation
nmap <silent> <leader>dj <Plug>(coc-implementation)
" }


" vim-better-whitespace {
"   <leader>y - Automatically remove trailing whitespace
nmap <leader>y :StripWhitespace<CR>
" }


" Search shorcuts {
"   <leader>h - Find and replace
map <leader>h :%s///<left><left>
"   <leader>/ - Claer highlighted search terms while preserving history
nmap <silent> <leader>/ :nohlsearch<CR>
" }


" Easy-motion {
"   <leader>w - Easy-motion highlights first word letters bi-directionally
map <leader>w <Plug>(easymotion-bd-w)
" }
