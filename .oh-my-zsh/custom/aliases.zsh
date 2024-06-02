alias vim='nvim'
alias lsl='ls -l'
alias lsla='ls -la'


export dotfiles="${HOME}/.dotfiles/"
alias dfls='cd $dotfiles'


# Alias for bat if it is installed
 if  command -v 'bat'  &> /dev/null
 then
   alias cat='bat'
 fi
