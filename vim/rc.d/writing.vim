set linebreak
set formatoptions +=t

"" build current chapter
nmap <leader>d :w<CR>:exec "!bundle exec rake build:chapter:$(echo '" . expand('%') . "'\|perl -ne 'm/src\\/chapters\\/([a-z]+)(?:\\/\|\\.markdown\\.erb)/;print $+')"<CR>
nmap <leader>D :w<CR>:exec "!bundle exec rake build"<CR>
