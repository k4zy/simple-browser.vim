if !has('python') && !has('python3')
        echomsg "Error: Required vim compiled with +python"
    finish
endif

let s:save_cpo = &cpo
set cpo&vim

"Python << PYTHONEOF
"" here we initialize the jedi stuff """
"import vim

"import sys
"import os

"sys.path.insert(1, os.path.join(vim.eval('expand("<sfile>:p:h:h")'), 'plugin'))
"import simple-browser
"sys.path.pop(1)

"PYTHONEOF

pyfile ~/.vim/bundle/simple-browser.vim/plugin/simple-browser.py

function! s:webbrowse()
    python webbrowse()
endfunction

command! -nargs=0 SimpleWebBrowse call s:webbrowse()
nnoremap W :<c-u>SimpleWebBrowse<cr>

let &cpo = s:save_cpo
unlet s:save_cpo
