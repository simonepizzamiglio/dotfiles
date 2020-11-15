#!/usr/bin/env bash

git pull origin master;

sh deps.sh;
sh macos.sh;
sh zsh.sh;

source "${HOME}/.zprofile";