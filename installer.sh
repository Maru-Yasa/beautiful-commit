install(){
  mkdir .bmit
  mkdir .bmit/bin
  cd ./.bmit
  curl --silent https://raw.githubusercontent.com/Maru-Yasa/beautiful-commit/main/bin/bmit -o ./bin/bmit
  eval sudo chmod u+x ./bin/bmit && sudo ln ./bin/bmit  /usr/bin/bmit
  echo "[🤖] You are redy to make beautiful commit 🎨, try 'bmit help'"
}

printf "[🤖] Are you ready?, this installer will install 'Beautiful Commit' to current working directory and make folder '.bmit', continue to install? (y/n)? "
read yesornot

case $yesornot in
  y)
    echo"[🤖] Okay then, I'll install it"
    install
    exit 0
  ;;
  n)
    echo "[🤖] Emmm okay, comeback later ya"
    exit 0
  ;;
  *)
    echo "[🤖] I don't understand, please chose (y/n)"
    exit 1
  ;;
esac

