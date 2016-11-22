" in case you were curious about how I navigated the file while presenting
au VimEnter no_plugins.vim setl window=66
au VimEnter no_plugins.vim normal 8Gzz
au VimEnter no_plugins.vim command! GO normal M17jzzH
au VimEnter no_plugins.vim command! BACK normal M17kzzH
au VimEnter no_plugins.vim command! RUN execute getline(".")
au VimEnter no_plugins.vim unmap H
au VimEnter no_plugins.vim unmap L

" these should work when 'literally' entered:
" 'ctrl_v ctrl_f' and 'ctrl_v ctrl_b', so the escape sequence gets entered properly
" instead of just '^f' and '^b'
" au VimEnter no_plugins.vim nnoremap ^f :GO<CR>
" au VimEnter no_plugins.vim nnoremap ^b :BACK<CR>
