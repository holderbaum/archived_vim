NeoBundle 'wincent/Command-T', {
                             \   'build' : {
                             \     'unix' : 'cd ruby/command-t && ruby extconf.rb && make'
                             \   }
                             \ }

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'wikitopian/hardmode'
NeoBundle 'bling/vim-airline'
NeoBundle 'bilalq/lite-dfm'
NeoBundle 'edsono/vim-matchit'
NeoBundle 'Raimondi/delimitMate'


NeoBundleLazy 'tpope/vim-markdown', {
                                    \   'autoload' : {
                                    \     'filetypes' : ['markdown'],
                                    \   },
                                    \ }

NeoBundleLazy 'scrooloose/syntastic', {
                                    \   'autoload' : {
                                    \     'filetypes' : ['c', 'cpp', 'ruby'],
                                    \   },
                                    \ }

