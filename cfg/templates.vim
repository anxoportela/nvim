if has("autocmd")
  augroup templates
    autocmd BufNewFile *.tex 0r ~/.config/nvim/templates/skeleton.tex
  augroup END
endif

if has("autocmd")
  augroup templates
    autocmd BufNewFile *.html 0r ~/.config/nvim/templates/skeleton.html
  augroup END
endif

if has("autocmd")
  augroup templates
    autocmd BufNewFile *.css 0r ~/.config/nvim/templates/skeleton.css
  augroup END
endif

if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/skeleton.sh
  augroup END
endif
