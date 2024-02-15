# work with macos
if [[ "$OSTYPE" == "darwin"* ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# load source config
if [[ -r ~/.bashrc ]]; then
    source ~/.bashrc
fi

export XDG_CONFIG_HOME="$HOME"/.config
