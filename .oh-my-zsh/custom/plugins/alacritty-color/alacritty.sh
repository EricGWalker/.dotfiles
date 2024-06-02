# This is where whatever script you would want to load would be placed
#

# The following is a script put together by asking chatgpt some questions and then putting pieces together.

TERMINFO_ENTRY="alacritty"

if infocmp $TERMINFO_ENTRY > /dev/null 2>&1; then
    #echo "Alacritty is in the terminfo database." 
    export TERM=alacritty
else
  #echo "Alacritty is not in the terminfo database."
  # Checking if we have Internet to relevant server
  ATTEMPTS=3
  SERVER=raw.githubusercontent.com

  echo "Alacritty wasn't found in terminfo database"
  echo "Pinging for terminfo."
  echo "This will likely slowdown startup noticeably."

  if ping -c $ATTEMPTS $SERVER > /dev/null 2>&1; then
    curl -sSL https://raw.githubusercontent.com/alacritty/alacritty/master/extra/alacritty.info | tic -x -
    export TERM=alacritty
  else
    export TERM=xterm-256color
  fi

fi
