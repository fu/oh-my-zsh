
function virtual_env_project_info() {
    if [[ $VIRTUAL_ENV != '' ]];then
        virtual_env_basename=`echo $VIRTUAL_ENV:t`
    else
        virtual_env_basename='     '
    fi
    echo ${virtual_env_basename}
}

#A=Black
#B=Red
#C=Green
#D=Brown
#E=Blue
#F=Purple
#G=Cyan
#H=Gray
#I=Transparent
#X=None
#Capital letters Bold
# ^-- not workin in oh-my-zsh ..:(
#               -+-+-+-+-+-+-+-+-+-+-+
export LSCOLORS="exfxbxdxcxegedabagahad"
#               ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
#               | | | | | | | | | | +- dir writeothers NOsticky
#               | | | | | | | | | +- dir writeothers sticky
#               | | | | | | | | +-exe setguid
#               | | | | | | | +-exe setuid
#               | | | | | | +-char_special
#               | | | | | +-block special
#               | | | | +-Executable
#               | | | +-Pipe
#               | | +-Socket
#               | +-Symbolic link
#               +-Dir
# <<>> http://geoff.greer.fm/lscolors/ <<>>


local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
#PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

PROMPT='%{$fg[red]%}%U %u%{$reset_color%}%n%{$fg[green]%}@%{$fg[red]%}%m%{$reset_color%}:%{$fg[green]%}%~
    %{$fg[blue]%}%i %{$fg[green]%} $(git_prompt_info) %{$fg[red]%}.-%{$reset_color%} $ '

RPS1='%{$fg[blue]%}$(virtual_env_project_info) %{$fg[red]%}[%{$reset_color%}%*%{$fg[red]%}]%{$reset_color%}'


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}Ξ"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}҉"
ls
