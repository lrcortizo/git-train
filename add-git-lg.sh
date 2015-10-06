#!/bin/bash

cat >> .git/config <<- EOM

[alias]
        lg = log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(white)%s%C(reset) %C(bold yellow)%d%C(reset)' --exclude=*remote* --all
        lgr = log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(white)%s%C(reset) %C(bold yellow)%d%C(reset)' --all
EOM

