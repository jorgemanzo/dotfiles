
printf "Installing php7.4........\n"

add-apt-repository ppa:ondrej/php
apt update
apt -y install php7.4

printf "Installing composer.......\n"

./composer.sh

printf "Moving composer to /usr/local/bin/composer....\n"

mv ~/composer.phar ~/composer
mv ~/composer /usr/local/bin/composer

printf "Installing some php deps...........\n"

apt install php7.4-{zip,mbstring,dom}

printf "Done!\n"
