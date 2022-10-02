#!/bin/bash

# source: https://github.com/ohmyzsh/ohmyzsh#manual-installation

repo_clone_or_pull () {
  REPO_LOCAL=$1
  REPO_REMOTE=$2

  if [ ! -d $REPO_LOCAL ]
  then
    git clone \
      --quiet \
      $REPO_REMOTE \
      $REPO_LOCAL
  else
    git -C $REPO_LOCAL pull --quiet
  fi
}

# ohmyzsh
repo_clone_or_pull \
  ${HOME}/.oh-my-zsh \
  https://github.com/ohmyzsh/ohmyzsh.git
