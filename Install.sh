#!/bin/bash

case `uname -s` in
    "Linux")

        if cat /etc/os-release | grep debian ;then
            sudo apt install -y atool bsdtar unrar-free p7zip \
                poppler-utils \
                mupdf-tools exiftool transmission-gtk \
                odt2txt w3m w3m-img ffmpegthumbnailer \
                graphicsmagick-imagemagick-compat \
                unzip highlight exiftool mediainfo \
                libxext-dev
            sudo pip3 install ueberzug
        elif cat /etc/os-release | grep -i arch ; then
            sudo pacman -S atool p7zip \
                w3m mediainfo \
                unzip highlight 
            sudo pip3 install ueberzug
        else
                echo "not debian or arch"
        fi
            git submodule update --init --recursive
            ;;
    *)
        echo "not a linux distribution"
        esac
