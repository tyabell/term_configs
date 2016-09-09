#!/bin/sh
export PATH=$PATH:/usr/local/bin

# abort if we're already inside a TMUX session
[ "$TMUX" == "" ] || exit 0

# startup a "default" session if none currently exists
tmux has-session -t ty || tmux new-session -s ty -d

# present menu for user to choose which workspace to open
PS3="Please choose your session: "
options=($(tmux list-sessions -F "#S") "NEW SESSION" "EXIT")
echo "Available sessions"
echo "------------------"
echo " "
select opt in "${options[@]}"
do
    case $opt in
        "NEW SESSION")
            read -p "Enter new session name: " SESSION_NAME
#            tmux new -s "$SESSION_NAME"
tmux new-session -d -s $SESSION_NAME
tmux new-window -t $SESSION_NAME:1
tmux new-window -t $SESSION_NAME:2
tmux new-window -t $SESSION_NAME:3
tmux new-window -t $SESSION_NAME:4
tmux new-window -t $SESSION_NAME:5
tmux select-window -t $SESSION_NAME:1
tmux -2 attach-session -t $SESSION_NAME
            break
            ;;
        "EXIT")
#            bash --login
            break;;
        *)
            tmux attach-session -t $opt
            break
            ;;
    esac
done
