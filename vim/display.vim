
" Options:{{{
"------------------------------------------------------------------------------
" Enable syntax
syntax on
" Disable visualbell and beeps
set novb
set t_vb=
" Show incomplete commands
set showcmd
" Show current mode
set showmode
set cursorline	" currrent line is highlighted
set t_Co=16		" Use 16 colors
set hlsearch	" highlight search matches
colorscheme mustang
" Show the cursor position
set ruler
" Show line numbers
set number
" Get rid of separator chars
set fillchars=""
" Set tab labels
set guitablabel=[%n:%t]

" Restore buffer shell on exit
let &t_ti = "\<Esc>[?47h"
let &t_te = "\<Esc>[?47l"

"}}}

