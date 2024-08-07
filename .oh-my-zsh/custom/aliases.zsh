alias vim='nvim'
alias lsl='ls -lh'
alias lsla='ls -lha'


alias fd="fdfind" # This line will break when I move away from ubuntu. Good. everything I do needs to be thrown away.

export dotfiles="${HOME}/.dotfiles/"
alias dfls='cd $dotfiles'


# Alias for bat if it is installed
 if  command -v 'bat'  &> /dev/null
 then
   alias cat='bat'
 fi

