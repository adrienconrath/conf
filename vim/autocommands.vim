"

" Functions:{{{
"------------------------------------------------------------------------------
" Reset cursor position to where it was when the file was closed
function! s:SetCursorPosition()
    if &filetype !~ 'commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction



"}}}
" Autocommands:{{{
"------------------------------------------------------------------------------
autocmd BufReadPost * call s:SetCursorPosition()


"}}}
