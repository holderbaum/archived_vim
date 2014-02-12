"" Taken from wikitopian/hardmode

fun! PrintDisabledMessage()
    echo "No dumb motions please"
endfun

fun! NoArrows()

    nnoremap <buffer> <Left> <Esc>:call PrintDisabledMessage()<CR>
    nnoremap <buffer> <Right> <Esc>:call PrintDisabledMessage()<CR>
    nnoremap <buffer> <Up> <Esc>:call PrintDisabledMessage()<CR>
    nnoremap <buffer> <Down> <Esc>:call PrintDisabledMessage()<CR>
    nnoremap <buffer> <PageUp> <Esc>:call PrintDisabledMessage()<CR>
    nnoremap <buffer> <PageDown> <Esc>:call PrintDisabledMessage()<CR>

    inoremap <buffer> <Left> <Esc>:call PrintDisabledMessage()<CR><Right>
    inoremap <buffer> <Right> <Esc>:call PrintDisabledMessage()<CR><Left>
    inoremap <buffer> <Up> <Esc>:call PrintDisabledMessage()<CR>
    inoremap <buffer> <Down> <Esc>:call PrintDisabledMessage()<CR>
    inoremap <buffer> <PageUp> <Esc>:call PrintDisabledMessage()<CR>
    inoremap <buffer> <PageDown> <Esc>:call PrintDisabledMessage()<CR>

    vnoremap <buffer> <Left> <Esc>:call PrintDisabledMessage()<CR>
    vnoremap <buffer> <Right> <Esc>:call PrintDisabledMessage()<CR>
    vnoremap <buffer> <Up> <Esc>:call PrintDisabledMessage()<CR>
    vnoremap <buffer> <Down> <Esc>:call PrintDisabledMessage()<CR>
    vnoremap <buffer> <PageUp> <Esc>:call PrintDisabledMessage()<CR>
    vnoremap <buffer> <PageDown> <Esc>:call PrintDisabledMessage()<CR>

endfun

fun! NoBackspace()

    set backspace=0

endfun

call NoArrows()
call NoBackspace()
