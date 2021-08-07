function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

colorscheme onedark
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': function('s:gitModified'),  'header': ['   Git Modified']},
          \ { 'type': function('s:gitUntracked'), 'header': ['   Git Untracked']},
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
let g:startify_enable_special = 0
let g:startify_files_number = 8
let g:startify_relative_path = 1
let g:startify_change_to_dir = 1
let g:startify_update_oldfiles = 1
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:webdevicons_enable_startify = 1
let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.config/zsh/.zshrc' },
            \ ]
let g:startify_enable_special = 0
"autocmd BufEnter * if line2byte('.') == -1 && len(tabpagebuflist()) == 1 | Startify | endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_powerline_fonts = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'onedark'
let g:ascii = [
 \' ____     ___   ___   __ __  ____  ___ ___ ',
 \'|    \   /  _] /   \ |  |  ||    ||   |   |',
 \'|  _  | /  [_ |     ||  |  | |  | | _   _ |',
 \'|  |  ||    _]|  O  ||  |  | |  | |  \_/  |',
 \'|  |  ||   [_ |     ||  :  | |  | |   |   |',
 \'|  |  ||     ||     | \   /  |  | |   |   |',
 \'|__|__||_____| \___/   \_/  |____||___|___|',
 \''
 \]
let g:startify_custom_header = startify#pad(g:ascii)
