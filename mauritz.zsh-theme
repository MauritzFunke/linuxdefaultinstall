#function repeat(){
#	for i in {1..(($COLUMNS-$(expr length whoami)-$(expr length hostname)-1))}; do echo -n "$1"; done
#}

USERCOLOR="cyan"
SYMBOL="λ"
if [[ $(whoami) == "root" ]]
then
    USERCOLOR="red"
    SYMBOL="#"
fi


PROMPT='╭%B%{$fg[$USERCOLOR]%}$(whoami)%{$reset_color%}%b@%B$(hostname)%b$(printf "%0.s─" $(seq 1 $(expr $COLUMNS - $(expr length $(hostname)) - $(expr length whoami) - 3)))
╰%U%2/%u@%{$fg[$USERCOLOR]%}%*%{$reset_color%} $SYMBOL '
# PROMPT='%{$fg[cyan]%}cyan%{$reset_color%}'
RPROMPT=''
