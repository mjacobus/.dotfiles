#!/usr/bin/env bash

# brew install ant
#
# mkdir -p ~/.apps/eclipse
#
#
# if [ ! -d "$HOME/.apps/eclim" ]; then
#   git clone git://github.com/ervandew/eclim.git ~/.apps/eclim
# fi


# wget -C http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/oxygen/R/eclipse-php-oxygen-R-linux-gtk-x86_64.tar.gz&mirror_id=17 -P ~/.apps/eclipse

cd ~/.apps/eclim/

ant -Declipse.home=$HOME/.apps/eclipse/eclipse
