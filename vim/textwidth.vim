
" Options:{{{
"------------------------------------------------------------------------------
set textwidth=80


"}}}
" Variables:{{{
"------------------------------------------------------------------------------
let g:defaultTextWidth = 79


"}}}
" Functions:{{{
"------------------------------------------------------------------------------
function! s:ToogleTextWidth()
	if g:defaultTextWidth == 79
		silent! exe "set textwidth=120" 
		let g:defaultTextWidth = 120
		echo "Textwidth value is now set to 120"
	elseif g:defaultTextWidth == 120
		silent! exe "set textwidth=160" 
		let g:defaultTextWidth = 160
		echo "Textwidth value is now set to 160"
	elseif g:defaultTextWidth == 160
		silent! exe "set textwidth=80"
		let g:defaultTextWidth = 79
		echo "Textwidth value is now set to 79"
	endif
endfunction


" }}}
" Commands:{{{
"------------------------------------------------------------------------------
command! -nargs=0	ToogleTextWidth		call s:ToogleTextWidth()


"}}}
" Mappings:{{{
"------------------------------------------------------------------------------
noremap <silent>	<F9>			:ToogleTextWidth<CR> 

" Change bg color for columns that are over defaultTextWidth
let &colorcolumn=g:defaultTextWidth+1

"}}}
