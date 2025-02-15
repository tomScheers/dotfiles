#!/bin/bash

SESSION_NAME="ses"

# Check if the session exists
tmux has-session -t $SESSION_NAME 2>/dev/null

if [ $? -eq 0 ]; then
    # Attach to the existing session
    tmux attach-session -t $SESSION_NAME
else
    # Create a new session and set up the windows
    tmux new-session -d -s $SESSION_NAME
    tmux rename-window -t $SESSION_NAME:0 editor
    tmux new-window -t $SESSION_NAME -n dev
    tmux new-window -t $SESSION_NAME -n llm

    # Run commands in LLM window
    tmux send-key -t $SESSION_NAME:llm 'ollama serve &' C-m
    tmux send-keys -t $SESSION_NAME:llm 'ollama run deepseek-r1' C-m

    # Run commands in editor and dev windows
    tmux send-keys -t $SESSION_NAME:editor 'cdp' C-m

    # Clear screens
    tmux send-keys -t $SESSION_NAME:dev C-l
    tmux send-keys -t $SESSION_NAME:editor C-l
    tmux send-keys -t $SESSION_NAME:llm C-l

    # Attach to the new session
    tmux attach-session -t $SESSION_NAME
fi
