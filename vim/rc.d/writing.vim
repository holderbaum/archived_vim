if has("gui_running")
  set guifont=Monospace\ 12
end

"" build current chapter
nmap <leader>c :w<CR>:exec "!bundle exec rake build:chapter:$(echo '" . expand('%') . "'\|perl -ne 'm/src\\/chapters\\/([a-z]+)(?:\\/\|\\.markdown\\.erb)/;print $+')"<CR>
nmap <leader>C :w<CR>:exec "!bundle exec rake build"<CR>
