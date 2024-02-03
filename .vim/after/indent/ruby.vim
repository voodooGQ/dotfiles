" Regex used for words that, at the start of a line, add a level of indent.
let s:ruby_indent_keywords =
      \ '^\s*\zs\<\%(module\|class\|if\|for' .
      \   '\|while\|until\|else\|elsif\|case\|when\|unless\|begin\|ensure\|rescue' .
      \   '\|\%(public\|protected\|private\|memoize\)\=\s*def\):\@!\>' .
      \ '\|\%([=,*/%+-]\|<<\|>>\|:\s\)\s*\zs' .
      \    '\<\%(if\|for\|while\|until\|case\|unless\|begin\):\@!\>'

let s:end_start_regex =
      \ '\C\%(^\s*\|[=,*/%+\-|;{]\|<<\|>>\|:\s\)\s*\zs' .
      \ '\<\%(module\|class\|if\|for\|while\|until\|case\|unless\|begin' .
      \   '\|\%(public\|protected\|private\|memoize\)\=\s*def\):\@!\>' .
      \ '\|\%(^\|[^.:@$]\)\@<=\<do:\@!\>'
