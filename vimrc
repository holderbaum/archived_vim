if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'wincent/Command-T', {
                             \   'build' : {
                             \     'unix' : 'cd ruby/command-t && ruby extconf.rb && make'
                             \   }
                             \ }

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"" vim: set ft=vim: 
