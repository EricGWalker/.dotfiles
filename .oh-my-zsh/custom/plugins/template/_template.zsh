# Below here is the shebang for the functions that you want autocomplete for
#compdef template

# Autocompletion for zsh shell.

local arguments

arguments=(
    '-Sample Flag that is in autocomplete'
)

_arguments -s $arguments
