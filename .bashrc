alias mysql="/usr/local/mysql/bin/mysql -u root -p"
export HISTSIZE=10000
export PATH="/Users/shaga/bin:/Users/shaga/bin:/Users/shaga/bin:/sw/bin:/sw/sbin:/usr/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/Users/shaga/bin:/opt/local/bin:/usr/local/bin:/opt/X11/bin"

alias mozc-config="/usr/lib/mozc/mozc_tool -mode=config_dialog"
alias mozc-dict="/usr/lib/mozc/mozc_tool --mode=dictionary_tool"


# Share history along other terminal windows.
function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend
export HISTSIZE=999999
