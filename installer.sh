install(){
  mkdir .bmit
  mkdir .bmit/bin
  cd ./.bmit
  curl --silent https://raw.githubusercontent.com/Maru-Yasa/beautiful-commit/main/bmit -o ./bin/bmit
  eval sudo chmod u+x ./bin/bmit && sudo ln ./bin/bmit  /usr/bin/bmit
  printf "[🤖] You are redy to make beautiful commit 🎨, try 'bmit help'"
}

printf "[🤖] Are you ready?, this installer will install 'Beautiful Commit' to current working directory and make folder '.bmit', continue to install? (y/n)? "
read yesornot

case $yesornot in
  y)
    printf "[🤖] Okay then, I'll install it \n"
    install
    exit 0
  ;;
  n)
    printf "[🤖] Emmm okay, comeback later ya"
    exit 0
  ;;
  *)
    printf "[🤖] I don't understand, please chose (y/n)"
    exit 1
  ;;
esac

