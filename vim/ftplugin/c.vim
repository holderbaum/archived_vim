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
nnoremap <leader>[ :cprev<CR>
nnoremap <leader>] :cnext<CR>

function! DefineCMakeBuildDir(build_dir)
	let target = fnamemodify(getcwd(), ':t')
	let makecmd = 'cd\ ' . getcwd() . '/' . a:build_dir . '/' . target . '\ &&\ make>/dev/null' 
	:exe 'set makeprg=(' . makecmd . '\&&\ ctest\ --output-on-failure)'
endfunction

NeoCompleteEnable

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
