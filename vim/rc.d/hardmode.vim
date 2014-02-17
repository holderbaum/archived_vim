let g:HardMode_hardmodeMsg = 'HardMode on'

function! EnableBs()
	set backspace=indent,eol,start
endfunction

autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
autocmd VimEnter,BufNewFile,BufReadPost * silent! call EnableBs()
