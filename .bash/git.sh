#!/bin/bash
# Useful git functions

alias gu=git_update

function git_update_loop() {
  if [ -d $1 ]; then
    pushd $1 > /dev/null
    if [ -d .git ]; then
      pwd
      git pull -r
      git fetch --tags
      git remote prune origin
      echo
    else
      for i in *; do
        git_update_loop $i
      done
    fi
    popd > /dev/null # $1
  fi
}

function git_update() {
    if [ -d .git ]; then
        git pull -r
        git remote prune origin
        exit $?
    fi

    for i in *; do
        git_update_loop $i
    done
}


function git_find_branch_locally() {
    if git branch -a | grep -i "$1" > /dev/null 2>&1; then
        pwd
        git branch -a | grep -i "$1"
        echo
    fi
}

function git_find_branch_loop() {
    if [ -d $1 ]; then
        pushd $1 > /dev/null
        if [ -d .git ]; then
            git_find_branch_locally "$2"
        else
            for i in *; do
                git_find_branch_loop $i "$2"
            done
        fi
        popd > /dev/null # $1
    fi
}


function git_find_branch() {

    if [ $# == 0 ]; then
        echo "Usage: $0 <PATTERN>" >&2
        exit 1
    fi

    if [ -d .git ]; then
        git_find_branch_locally "$1"
        exit $?
    fi

    for i in *; do
        git_find_branch_loop $i "$1"
    done
}
