NeoBundle 'wincent/Command-T', {
                             \   'build' : {
                             \     'unix' : 'cd ruby/command-t && ruby extconf.rb && make'
                             \   }
                             \ }

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'wikitopian/hardmode'
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'bilalq/lite-dfm'

NeoBundleLazy 'scrooloose/syntastic', {
                                    \   'autoload' : {
                                    \     'filetypes' : ['c', 'cpp', 'ruby'],
                                    \   },
                                    \ }

