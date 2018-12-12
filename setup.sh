#!/bin/bash
export TTY

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

case "$machine" in
    Mac) {
        brew insteall jq
    }
    ;;

    Linux) {
        sudo apt install jq
    }
    ;;

    *)
esac


