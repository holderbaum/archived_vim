let g:HardMode_hardmodeMsg = 'HardMode on'

autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
