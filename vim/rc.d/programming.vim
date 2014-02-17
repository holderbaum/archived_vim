set listchars=tab:▸\ ,trail:.,extends:<,precedes:>,eol:·,nbsp:⋅
set list
set colorcolumn=81              " show line on the 81th char column
set nowrap                      " don't wrap lines
set wrapmargin=0
set formatoptions=ro

set nofoldenable

set autoindent                  " intendation based on previous line
set smartindent                 " be smarter, lang specific intendation

set number
set numberwidth=3

set tags+=tags;			" recurse into parent directories

let g:syntastic_auto_loc_list=1

nnoremap <leader>[ :cprev<CR>
nnoremap <leader>] :cnext<CR>

" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
