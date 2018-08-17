# Mark and jump between directories
export MARKPATH=$HOME/.marks
function goto {
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark {
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark {
    rm -i "$MARKPATH/$1"
}
function marks {
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\-/g' && echo
}

# Custom completion
fpath=(./ $fpath)
autoload -U compinit
compinit
zstyle ':completion:*' menu select=2
