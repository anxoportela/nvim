vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
nnoremap <C-s> :w<CR>
nnoremap <TAB> :bnext<CR>
nnoremap <M-TAB> :bd<CR>
vnoremap < <gv
vnoremap > >gv
nnoremap <C-t> :TagbarToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-Left> <C-w>h
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Right> <C-w>l
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <leader>s :Startify<CR>
nnoremap <leader>ss :SSave<CR>
nnoremap <leader>sc :TagbarClose<CR>:SClose<CR>
nnoremap <leader>sl :SLoad<CR>
nnoremap <leader>sd :SDelete<CR>
nmap <leader>r :RnvimrToggle<CR>
map <expr> <leader>f fugitive#head() != '' ? ':GFiles --cached --others --exclude-standard<CR>' : ':Files<CR>'
"map <expr> <leader>F fugitive#head() != '' ? ':GFiles?<CR>' : ''
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-g> :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>
nnoremap <leader>lt :Floaterms<CR>
map <leader>c :w! \| !compiler <c-r>%<CR>
map <leader>p :!opout <c-r>%<CR><CR>
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_c4l
