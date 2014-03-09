filetype plugin indent on       " load file type plugins + indentation
syntax enable

set encoding=utf-8
set fileencoding=utf8

set textwidth=80

set nobackup                    " no backup file, we are using git for that
set noswapfile

"" rerun shortcut
nmap <leader>x :w<CR>:!!<CR>
