Src programming

set tabstop=2 shiftwidth=2
set expandtab

nmap <leader>r :!rake<CR>
nmap <leader>c :w<CR>:exec "!bundle exec ruby -Ilib:spec:test '" . expand('%') . "'"<CR>
