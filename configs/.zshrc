autoload -Uz vcs_info
precmd () { vcs_info }
zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)' # git(main)
PS1='%n@%m %F{red}%/%f$vcs_info_msg_0_ $ ' # dark@vm /dir git(main) $

eval "$(direnv hook zsh)"