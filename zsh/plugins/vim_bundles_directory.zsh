function vim_plugins_directory () {
    local selected_dir=$(find $HOME/.vim/{bundle,mybundle} -maxdepth 1 | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N vim_plugins_directory
