# Minimal prompt

PS1='$ '

# Set terminal title for xterm-compatible terminals
case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;\u@\h: \w\a\]$PS1"
        ;;
esac
