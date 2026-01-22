# the idea of this theme is to contain a lot of info in a small string, by
# compressing some parts and colorcoding, which bring useful visual cues,
# while limiting the amount of colors and such to keep it easy on the eyes.
# When a command exited >0, the timestamp will be in red and the exit code
# will be on the right edge.
# The exit code visual cues will only display once.
# (i.e. they will be reset, even if you hit enter a few times on empty command prompts)

# local time, color coded by last return code
time_enabled="%(?.%{$fg[green]%}.%{$fg[red]%})%*%{$reset_color%}"
time_disabled="%{$fg[green]%}%*%{$reset_color%}"
time=$time_enabled

# user part
local user="%{$fg[blue]%}%n%{$reset_color%}"

# Hostname part
local host="@$HOST%{$reset_color%}"

# Compacted $PWD
local pwd="%{$fg[blue]%}%c%{$reset_color%}"

# Compact SSH-Connection
if [[ -n $SSH_CONNECTION ]]
then
	ssh_con=" %{$fg_bold[red]%}(ssh)%{$reset_color%}"
else
	ssh_con=""
fi

PROMPT='${time}${ssh_con} ${user}${host} ${pwd} $(git_prompt_info)'

# Git prompt styling
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%} %{$fg[yellow]%}?%{$fg[green]%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"

# elaborate exitcode on the right when >0
return_code_enabled="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
return_code_disabled=
return_code=$return_code_enabled

RPS1='${return_code}'

# Custom accept-line handler that clears error indicators on empty prompts
# When pressing enter on an empty command line, disable the colored timestamp
# and right-side exit code to avoid visual clutter on subsequent empty prompts
function accept-line-or-clear-warning () {
	if [[ -z $BUFFER ]]; then
		time=$time_disabled
		return_code=$return_code_disabled
	else
		time=$time_enabled
		return_code=$return_code_enabled
	fi
	zle accept-line
}
zle -N accept-line-or-clear-warning
bindkey '^M' accept-line-or-clear-warning
