Src programming

" set c linux style indentations
setlocal tabstop=8
setlocal shiftwidth=8
setlocal textwidth=80
setlocal noexpandtab

setlocal cindent
setlocal formatoptions=tcqlron
setlocal cinoptions=:0,l1,t0,g0

let g:syntastic_c_checkers=[]

nnoremap <leader>m :w<CR>:silent make\|redraw!<CR>
nnoremap <leader>ncm :call DefineCMakeBuildDir('../build')\|redraw!<CR>

function! DefineCMakeBuildDir(build_dir)
	let s:target = fnamemodify(getcwd(), ':t')
	let s:makecmd = 'cd\ ' . getcwd() . '/' . a:build_dir . '/' . s:target . '\ &&\ make>/dev/null'
	:exe 'set makeprg=(' . s:makecmd . '\&&\ ctest\ --output-on-failure)'
endfunction

set errorformat+=%EThe\ following\ tests\ FAILED:,%C%m,%Z
set errorformat+=%f:(.text%.%#):\ %m

NeoCompleteEnable

autocmd BufEnter <buffer> :RainbowParenthesesActivate
autocmd BufEnter <buffer> :RainbowParenthesesLoadRound
autocmd BufEnter <buffer> :RainbowParenthesesLoadBraces
autocmd BufEnter <buffer> :RainbowParenthesesLoadSquare
