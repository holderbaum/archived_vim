if exists("current_compiler")
  finish
endif
let current_compiler = "minitest"

CompilerSet errorformat=
    \%W\ %\\+%\\d%\\+)\ Failure:,
    \%C%m\ [%f:%l]:,
    \%E\ %\\+%\\d%\\+)\ Error:,
    \%C%m:,
    \%+Z%.%#,
    \\ \ \ \ %f:%l:%m,
    \%-G%.%#,
    \%+E%f:%l:\ parse\ error,
    \%W%f:%l:\ warning:\ %m,
    \%E%f:%l:in\ %*[^:]:\ %m,
    \%E%f:%l:\ %m,
    \%-C%\tfrom\ %f:%l:in\ %.%#,
    \%-Z%\tfrom\ %f:%l,
    \%-Z%p^,
    \%-G%.%#

