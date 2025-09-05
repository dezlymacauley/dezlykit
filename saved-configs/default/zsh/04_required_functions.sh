# Display the contents ot the $PATH variable in a list format
list_path_variable_contents() {
  echo "$PATH" | tr ':' '\n'
}

shell_history_clear() {
    cat /dev/null > $HISTFILE && \
    rm -f $HISTFILE && \
    touch $HISTFILE && \
    exec zsh
}

shell_history_disable() {
    unset HISTFILE
    export HISTSIZE=0
    export HISTFILESIZE=0
    set +o history
}

shell_reload() {
    exec zsh
}

upkeep_dezlykit() {
    cd $HOME/.config/dezlykit/
    ./upkeep_dezlykit.sh
}
