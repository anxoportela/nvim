let mapleader=","
au! BufWritePost $MYVIMRC source %
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
au BufNewFile * startinsert
filetype plugin on
syntax enable
set encoding=utf-8
set number relativenumber
nnoremap c "_c
set go=a
set iskeyword+=-
set formatoptions-=cro
set mouse=a
set noshowmode
set nohlsearch
set smarttab
set clipboard+=unnamedplus
set smartindent
set cursorline
set background=dark
set showtabline=2
set nobackup
set nowritebackup
set autoindent
set laststatus=2
set tabstop=2
set shiftwidth=2
set expandtab
set hidden
set updatetime=300
set shortmess+=c
set signcolumn=yes
set splitbelow splitright
set ruler
set cmdheight=2
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
cmap w!! w !sudo tee %
autocmd VimLeave *.tex !texclear %
autocmd BufWritePre * %s/\s\+$//e

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:tex_flavor='latex'
autocmd BufRead,BufNewFile *.sty setl filetype=tex
autocmd FileType tex setl sw=2
autocmd FileType tex setl tabstop=2
autocmd FileType tex setl softtabstop=2
autocmd FileType tex setl softtabstop=2
autocmd FileType tex let g:ycm_auto_trigger=0
let g:tex_conceal="abdgm"
let g:tex_conceal="abdgm"
let g:tex_fold_enabled=1
autocmd FileType tex map <leader>w :w !detex \| wc -w<CR>
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_strikethrough = 1
