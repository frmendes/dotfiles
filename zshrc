# Loading Antigen
ANTIGEN=$HOME/.antigen
source $ANTIGEN/antigen.zsh

# Load oh-my-zsh's library
antigen use oh-my-zsh

# Fish-like syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Theming
antigen theme $ANTIGEN/themes aviato

# Custom variables
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
ENABLE_CORRECTION="false"

antigen apply

export EDITOR='vim'

# Loading personal commands
source $HOME/local/aliases

# Loading local postgresql commands
source $HOME/local/initpsql.sh

# Loading execs from ~/local/bin
export PATH="$HOME/local/bin:${PATH}"

# Base16 Shell
BASE16_SCHEME="ocean"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

# Remove annoying deprecated warning
unset GREP_OPTIONS

# Loading nvm
source ~/.nvm/nvm.sh

# Loading rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Loading tmuxinator
source ~/local/bin/tmuxinator.zsh

# Use mux given window names
export DISABLE_AUTO_TITLE=true

# Rust support
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib