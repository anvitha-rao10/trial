#!/bin/bash

if [ ! -f ~/.ssh/id_ed25519 ]; then
  ssh-keygen -t ed25519 -C "jenkins-agentic" -f ~/.ssh/id_ed25519 -N ""
  echo "SSH key generated"
else
  echo "SSH key already exists"
fi

echo "----- COPY THIS PUBLIC KEY TO GITHUB -----"
cat ~/.ssh/id_ed25519.pub
