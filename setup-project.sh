#!/bin/bash

if [[ $1 == "" ]]
  then
    echo "Project path is required"
    exit -1
fi

if [[ $2 != "" ]]
  then
    NAME=$2
  else
    NAME="dev_environment"
fi


#: '
SESH=$NAME

#tmux has-session -t $SESH 2>/dev/null

#if [ $? != 0 ]; then
  #tmux new-session -d -s $SESH -n $NAME


  #tmux switch-client -t $SESH
  #tmux new-window -d

  tmux split-window -v

  tmux resize-pane -D 10
  tmux select-pane -t 1
  tmux send-keys "n cd $1" C-m

  tmux select-pane -t 0
  tmux send-keys "nvim $1" C-m
  #tmux select-pane -t $SESH:0
  #tmux send-keys -t $SESH:0 "echo pane nvim"
  #tmux send-keys -t $SESH:$NAME "cd $1" C-m
  #tmux send-keys -t $SESH:$NAME "nvim ." C-m

  #tmux split-window -v -t $SESH:1
  #tmux send-keys -t $SESH:1 "echo pane bash"
  #tmux select-pane -t $SESH:1 
  #tmux resize-pane -D 10
  #tmux send-keys "cd $1" C-m


  

#fi

#tmux select-window -t $SESH:0
#tmux switch-client -t $SESH
#'
