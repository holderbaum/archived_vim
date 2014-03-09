unlet! b:current_syntax
syn include @LATEX syntax/tex.vim

syntax region markdownTexLine matchgroup=SingleSnip  start="\\\w*"            end="$"                 contains=@LATEX
syntax region markdownTexBlck matchgroup=SnipRegion  start="<!---tex: on-->"  end="<!---tex: off-->"  contains=@LATEX

syntax region markdownTexMath matchgroup=SpecialSnip start="\$"   end="\$"    contains=@texMathZoneGroup
syntax region markdownTexMath matchgroup=SpecialSnip start="\$\$" end="\$\$"  contains=@texMathZoneGroup

hi link SingleSnip  Statement
hi link SpecialSnip Special
hi link SnipRegion  SpecialKey

let b:current_syntax = "markdown"
