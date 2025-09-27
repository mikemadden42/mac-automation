#!/bin/sh

brew update -v && brew upgrade -v
brew cleanup -v
rm -rf "$HOME"/Library/Caches/Homebrew/*
