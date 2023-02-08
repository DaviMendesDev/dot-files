if status is-interactive
    # Commands to run in interactive sessions can go here

    set bashrc $HOME/.bashrc
    [ -f "$bashrc" ] && source "$bashrc"
end
