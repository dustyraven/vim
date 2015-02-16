alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd /'
alias ~='cd ~'
alias b='cd -'

alias ll='ls -AlFX --group-directories-first'
alias lld='ls -AldX */'

alias md='mkdir -pv'

alias mysql='mysql --auto-rehash'

alias py='python -B'

alias tree='tree -a'

alias restartapache='sudo apachectl -k graceful'

cmpx() {
    cmp -l $1 $2 | mawk 'function oct2dec(oct,dec) {for (i = 1; i <= length(oct); i++) {dec *= 8; dec += substr(oct, i, 1)}; return dec} {printf "%08X %02X %02X\n", $1 - 1, oct2dec($2), oct2dec($3)}'
}

alias checkphp='find . -name \*.php -exec php -l "{}" \; | grep -v "No syntax errors detected"'

#if user is not root, pass all commands via sudo #
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
    alias update='sudo apt-get update'
    alias upgrade='sudo apt-get upgrade'
    alias shutdown='sudo shutdown -h now'
fi
