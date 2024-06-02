
# Instructions from the bat repo:
# https://github.com/sharkdp/bat?tab=readme-ov-file#how-to-use

alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

# Bat as Man Pager
# Note bat was built from source, if using apt on ubuntu/debian
# then commannd needs to be aliased as default is
# batcat instead of bat

export MANROFFOPT="-c"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

export PAGER=bat

