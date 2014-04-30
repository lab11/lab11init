#!/bin/bash
# a shell script containing some useful functions. 

#Tinyos print helper function
tosprint() {
	java net.tinyos.tools.PrintfClient -comm serial@/dev/$1:telosb
}

initial_install() {
    sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
    sudo add-apt-repository -y ppa:inkscape.dev/stable
    sudo add-apt-repository -y ppa:terry.guo/gcc-arm-embedded
    sudo add-apt-repository -y ppa:chris-lea/node.js
    sudo apt-get update
    sudo apt-get install -y --force-yes subversion git vim sublime-text-installer ssh \
                                        automake g++ build-essential \
					gcc-msp430 gcc-arm-linux-gnueabi \
					gcc-arm-none-eabi \
					python-serial python-pip python-scipy python-matplotlib \
					python3-serial python3-pip python3-scipy python3-matplotlib \
                                        texlive-full inkscape gimp gnuplot \
					nodejs

}
