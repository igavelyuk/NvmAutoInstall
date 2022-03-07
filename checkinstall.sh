#!/usr/bin/env bash
#!/bin/bash

isInFile=$(cat "$HOME/.bashrc" | grep -c "# place this after nvm initialization!")
if [ $isInFile -eq 1 ]
    then
      echo 'Found and Patched'
    else
      echo 'NOT Patched'
      cat "./bashrc.Text" >> "$HOME/.bashrc"
fi;
