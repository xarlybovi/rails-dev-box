 #!/usr/bin/env bash

source $HOME/.rvm/scripts/rvm || source /etc/profile.d/rvm.sh

echo 'installing ruby version' $1
rvm use --default --install $1 >/dev/null 2>&1

shift

if (( $# ))
echo 'installing gems'
then gem install $@ >/dev/null 2>&1
fi

rvm cleanup all >/dev/null 2>&1