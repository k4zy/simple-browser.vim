if !has('python') && !has('python3')
        echomsg "Error: Required vim compiled with +python"
    finish
endif

let s:save_cpo = &cpo
set cpo&vim

pyfile ~/.vim/bundle/simple-browser.vim/plugin/simple-browser.py

function! s:webbrowse()
    python webbrowse()
endfunction

command! -nargs=0 SimpleWebBrowse call s:webbrowse()
nnoremap W :<c-u>SimpleWebBrowse<cr>

let &cpo = s:save_cpo
unlet s:save_cpo
