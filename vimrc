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

fu! SrcFile(file)
  let path = '~/.vim/rc.d/' . a:file
  :exe 'source ' . fnameescape(path)
endfu

command! -nargs=1 Src call SrcFile(<f-args>)

Src basics

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"" vim: set ft=vim: 
