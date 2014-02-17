Src programming

set tabstop=2 shiftwidth=2
set expandtab

nmap <leader>r :w<CR>:call RubyTesting()<CR>
nmap <leader>c :w<CR>:call RubyTesting(expand('%'))<CR>
nmap <leader>m :w<CR>:call RunLastMake()<CR>

function! InitLastMake()
	if !exists("s:next_makeprg")
		let s:next_makeprg = 'bundle\ exec\ rake'
	endif
endfunction

function! RubyTesting(...)
	if a:0 == 0
		let s:next_makeprg = 'bundle\ exec\ rake'
	else
		let s:next_makeprg = 'RUBYLIB=lib:test:spec\ bundle\ exec\ ruby\ -rminitest/autorun\ ' . a:1
	endif

	call RunLastMake()
endfunction

function! RunLastMake()
	:exe 'set makeprg=' . s:next_makeprg
	silent make|redraw!
endfunction

NeoCompleteEnable

autocmd FileType ruby compiler minitest
autocmd FileType ruby call InitLastMake()
