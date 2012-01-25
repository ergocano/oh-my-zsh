function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '○'
}

PROMPT='
$fg_bold[red]%n $fg_bold[white]de $fg_bold[blue]%m $fg_bold[white]en $fg[yellow]%d$(git_prompt_info)$fg[yellow]$(rvm_prompt_info)$reset_color
$(prompt_char) '

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="$fg_bold[green]("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_CLEAN="✔"
ZSH_THEME_GIT_PROMPT_DIRTY="✗"
