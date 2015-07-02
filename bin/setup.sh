case `uname -a` in
Linux*x86_64*)  echo "Linux 64 bit"
    sudo apt-get update
    sudo apt-get --assume-yes install nodejs
    sudo apt-get --assume-yes install npm
    sudo apt-get --assume-yes install libxml2-dev
    sudo ln -s "$(which nodejs)" /usr/bin/node || true
    ;;

Linux*i686*)  echo "Linux 32 bit"
    sudo apt-get update
    sudo apt-get --assume-yes install nodejs
    sudo apt-get --assume-yes install npm
    sudo apt-get --assume-yes install libxml2-dev
    sudo ln -s "$(which nodejs)" /usr/bin/node || true
    ;;

Darwin*)  echo  "OSX"
    brew install node
    brew install libxml2
    ;;

*) echo "Unknown OS"
   ;;
esac
