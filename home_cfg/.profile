# fortune
if [ -x /usr/games/fortune ]
then
  echo
  if [ -x /usr/bin/cowsay ]
  then
    /usr/games/fortune -a | cowsay
  else
    /usr/games/fortune -a
  fi
  echo
fi

echo
/usr/games/pom
echo

# show tasks to be done
#task cal
ncal -w -M -A 5 -b
task long -BLOCKED

# proxy for TOR
#export http_proxy=http://127.0.0.1:8118/
#export https_proxy="$http_proxy"
