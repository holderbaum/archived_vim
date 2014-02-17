Src programming

set tabstop=2 shiftwidth=2
set expandtab

nmap <leader>r :w<CR>:call RubyTesting()<CR>
nmap <leader>c :w<CR>:call RubyTesting(expand('%'))<CR>
nmap <leader>m :w<CR>:call RunLastMake()<CR>

function! InitLastMake()
	let s:last_make = 'bundle\ exec\ rake'
endfunction

function! RubyTesting(...)
	if a:0 == 0
		let s:last_make = 'bundle\ exec\ rake'
	else
		let s:last_make = 'RUBYLIB=lib:test:spec\ bundle\ exec\ ruby\ -rminitest/autorun\ ' . a:1
	endif

	call RunLastMake()
endfunction

function! RunLastMake()
	:exe 'set makeprg=' . s:last_make
	silent make|redraw!
endfunction

NeoCompleteEnable

autocmd FileType ruby compiler minitest
autocmd FileType ruby call InitLastMake()
