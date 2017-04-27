if exists tmux; then
    function peco_tmux_session () {
        local res=$(tmux list-sessions | peco | awk -F':' '{print $1}')
        if [ -n "$res" ]; then
            BUFFER="tmux new-session -t ${res}"
            zle accept-line
        fi
        zle clear-screen
    }
    zle -N peco_tmux_session
fi

