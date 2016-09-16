fpath=($HOME/.functions ${fpath})

HISTFILE=$HOME/.zsh-history
HISTSIZE=20000
SAVEHIST=100000
setopt hist_save_nodups
setopt autopushd pushdignoredups pushdminus pushdsilent

setopt always_last_prompt # 無駄なスクロールを避ける
setopt append_history # ヒストリファイルに追加
setopt auto_cd # ディレクトリ名だけで、ディレクトリの移動をする。
setopt auto_list # 自動的に候補一覧を表示
#setopt auto_pushd # cdのタイミングで自動的にpushd
#setopt auto_name_dirs # "~$var" でディレクトリにアクセス
setopt auto_param_keys # 変数名を補完する
setopt auto_param_slash # ディレクトリ名末尾の / を自動的に付加
setopt auto_remove_slash # 接尾辞を削除する
#setopt bang_hist # csh スタイルのヒストリ置換
setopt brace_ccl # {a-za-z} をブレース展開
# setopt cdable_vars # 先頭に "~" を付けたもので展開
setopt correct # コマンドの補正候補を表示
setopt complete_in_word # 語の途中でもカーソル位置で補完
setopt complete_aliases # 補完動作の解釈前にエイリアス展開
setopt extended_glob # "#", "~", "^" を正規表現として扱う
setopt extended_history # 開始/終了タイムスタンプを書き込み
setopt hist_verify # ヒストリ置換を実行前に表示
#setopt glob_dotsi # "*" にドットファイルをマッチ
setopt hist_ignore_dups # 直前のヒストリと全く同じとき無視
setopt hist_ignore_all_dups # 重複したヒストリは追加しない
# setopt hist_ignore_space # 先頭がスペースで始まるとき無視
# setopt ignore_EOF # Ctrl+D でログアウトしない
setopt list_types # ファイル種別を表す記号を末尾に表示
setopt list_packed # 補完候補をつめて表示
setopt magic_equal_subst # "val=expr" でファイル名展開
setopt mark_dirs # 展開でディレクトリにマッチした場合末尾に / を付加
setopt multios # 複数のリダイレクトやパイプに対応
setopt numeric_glob_sort # ファイル名を数値的にソート
setopt clobber # リダイレクトで上書き許可
#setopt no_beep # ベルを鳴らさない
#setopt no_check_jobs # シェル終了時にジョブをチェックしない
setopt no_flow_control # C-s/C-q によるフロー制御をしない
setopt no_hup # 走行中のジョブにシグナルを送らない
setopt no_list_beep # 補完の時にベルを鳴らさない
#setopt no_list_types # auto_list の補完候補一覧で、ls -F のようにファイルの種別をマーク表示しない
setopt notify # ジョブの状態をただちに知らせる
setopt prompt_subst # プロンプト内で変数展開
setopt pushd_ignore_dups # 重複するディレクトリを無視
setopt rm_star_silent # "rm * " を実行する前に確認
setopt sun_keyboard_hack # 行末の "` (バッククウォート)" を無視
setopt sh_word_split # 変数内の文字列分解のデリミタ
setopt share_history # シェルのプロセス間に履歴を共有
setopt no_histallowclobber # ">" を ">!" としてヒストリ保存
setopt print_eight_bit # 8ビット目を通し、日本語のファイル名を表示
setopt hist_reduce_blanks    # 無駄な空白は取り除く
setopt inc_append_history    # コマンド実行のたびに履歴ファイルに追記
# setopt auto_menu # 自動的にメニュー補完する
# setopt menu_complete # 一覧表示せずに、すぐに最初の候補を補完

bindkey -e

autoload -U compinit
compinit

# 補完関数の出力を詳しくする
zstyle ':completion:*' verbose yes

zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list _history
zstyle ':completion:*:messages' format '%F{YELLOW}%d'$DEFAULT
zstyle ':completion:*:warnings' format '%F{RED}No matches for:''%F{YELLOW} %d'$DEFAULT
zstyle ':completion:*:descriptions' format '%F{YELLOW}completing %B%d%b'$DEFAULT
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:descriptions' format '%F{yellow}Completing %B%d%b%f'$DEFAULT
zstyle ':completion:*' group-name ''

r() {
  local f
  f=(~/.functions/*(.))
  unfunction $f:t 2> /dev/null
  autoload -U $f:t
}

### title bar text utilities
### screenで使えるエスケープシーケンス http://d.hatena.ne.jp/amt/20060530/Screen
### 上の記事の参照元 http://d.tir.jp/pw?bk-screen
### xterm control sequence http://www.it.freebsd.org/pub/Unix/XFree86/WWW/htdocs/current/ctlseqs.html
###   * この記事の Operating System Controls 節のSet Text Parameters参照
# ターミナルのステータス欄に一時メッセージを表示
out_st () { echo -ne "\033^$*\033\\ \r" ; }
# ターミナルのウインドウタイトルを変更
out_title () { echo -ne "\033P\033]0;$*\033\\ \r" ; }
# gnu-screen の子ウインドウ名を変更
out_screen () { echo -ne "\033k$*\033\\ \r" ; }




DIRSTACKSIZE=16
alias vimh='rm /tmp/vim_dirhist_file; vim "+MRU";dir=`ruby -e "src=%Q(/tmp/vim_dirhist_file); dir=File.read(src) if File.exist?(src); print( (dir && !dir.empty?) ? File.dirname(dir) : %Q(./))"`; echo \=\> $dir; cd $dir'

alias ls='ls -F --color=auto'
alias find_='find_ ./ -name '
alias grep_='grep__ ./'
alias goog='goog_ ./ '
alias googf='googf_ ./ '
alias grep='grep --color'
alias refresh_title="out_title @`hostname`"
alias vimrc='vim $HOME/.vimrc'
alias zshrc='vim $HOME/.zshrc'
alias hgg='hg glog --style ~/bin_common/hg_log_style'

# gitオブジェクトを解凍する
alias deflate="perl -MCompress::Zlib -e 'undef $/; print uncompress(<>)'"

alias cdd='peco_cd_history'

if type lv > /dev/null 2>&1; then
  ## lvを優先する。
  export PAGER="lv"
else
  ## lvがなかったらlessを使う。
  export PAGER="less"
fi

if [ "$PAGER" = "lv" ]; then
  ## -c: ANSIエスケープシーケンスの色付けなどを有効にする。
  ## -l: 1行が長くと折り返されていても1行として扱う。
  ##     （コピーしたときに余計な改行を入れない。）
  export LV="-c -l"
else
  ## lvがなくてもlvでページャーを起動する。
  alias lv="$PAGER"
fi

# suffix alias
alias -g L='| lv'
alias -g V='| vim -'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g W='| wc'
alias -g S='| sed'
alias -g A='| awk'
alias -g W='| wc'
alias -g P='| peco'
alias du1='du --max-depth=1 -h'

# 文字コードを euc-jp に変換
function euc() {
for i in $@; do;
  nkf -e --overwrite $i
done;
}

function mdcd() {
  mkdir $1
  cd $1
}


function cdg () {
  cd `printdirg $*`
}

# ----- environment parameter -----
export PATH=$HOME/bin:$HOME/bin_common:/usr/local/go/bin:/usr/local/bin:$PATH:/opt/mysql/bin:$HOME/.ant/bin:$HOME/local/bin
export PATH=$PATH:/usr/local/go/bin
export SITE_RUBY=/usr/local/lib/ruby/site_ruby/1.8
export OSS=/opt/kameda
export WWW_DIR=/www/htdocs/kameda

# golang
#export GOROOT=$HOME/go
#export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/gocode
export PATH=$PATH:$GOPATH/bin


### zsh_prompt
if [[ $ZSH_VERSION == (<5->|4.<4->|4.3.<10->)* ]]; then
  autoload -Uz vcs_info
  zstyle ':vcs_info:*' formats '(%s)-[%b]%u%c'
  zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]%u%c'
  precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
  }
  export RPROMPT="%1(v|%F{green}%1v%f|) %{[33m%}[%~]%{[m%}"
else
  export RPROMPT='%{[33m%}[%~]%{[m%}'
fi


# function collapse_pwd {
#     echo $(pwd | sed -e "s,^$HOME,~,")
# }
# 
# function prompt_char {
#     git branch >/dev/null 2>/dev/null && echo '(git)' && return
#     hg root >/dev/null 2>/dev/null && echo '(hg)' && return
#     echo 'o'
# }
# 
# function battery_charge {
#     echo `$BAT_CHARGE` 2>/dev/null
# }
# 
# function virtualenv_info {
#     [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
# }
# 
# function hg_prompt_info {
#     hg prompt --angle-brackets "\
# < on %{$fg[magenta]%}<branch>%{$reset_color%}>\
# < at %{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
# %{$fg[green]%}<status|modified|unknown><update>%{$reset_color%}<
# patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[black]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
# }

# PROMPT='
# %{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}$(hg_prompt_info)$(git_prompt_info)
# $(virtualenv_info)$(prompt_char) '
export PROMPT="%U$USER@%m%%%u "

# export RPROMPT="$(hg_prompt_info)$(git_prompt_info) %{[33m%}[%~]%{[m%}"

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
### /zsh_prompt


export TERMINFO=$HOME/.terminfo/
#export SVN_EDITOR=$HOME/bin/vim
export ANT_HOME=$HOME/.ant
export EDITOR=vim


function chpwd() {
  ls
}
function cdup() {
  echo
  cd ..
  zle reset-prompt
}
zle -N cdup
bindkey '^\^' cdup

if [[ $TERM =~ "screen" ]]; then
else
  # TERMを強制で xterm-256color にする。
  # tmuxは TERMに "256col" という文字列が含まれてるか
  # どうかで、端末が256色対応してるかどうかを判定するため。
  export TERM=xterm-256color
fi


agent="$HOME/.ssh/auth_sock"

if [ -S "$SSH_AUTH_SOCK" ]; then
  case $SSH_AUTH_SOCK in
    /tmp/*/agent.[0-9]*)
    ln -snf "$SSH_AUTH_SOCK" $agent && export SSH_AUTH_SOCK=$agent
    echo "create symbolic-link to SSH_AUTH_SOCK"
  esac
elif [ -S $agent ]; then
  export SSH_AUTH_SOCK=$agent
  echo "set symbolic-link in SSH_AUTH_SOCK"
else
  echo "no ssh-agent"
fi

# 小文字で打っても大文字が補完される
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# run commands when start up
#echo -ne "\033]0;$(whoami)@$(hostname)\007"
refresh_title
#jojo


autoload -U select-word-style
select-word-style bash

export RUBYLIB=$HOME/my_local/lib/ruby:$HOME/my_local/src/ruby/termtter/lib

# 履歴検索機能ショートカット
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end 

# vi風 行の文字検索
bindkey "^G" vi-find-prev-char
bindkey "^F" vi-repeat-find
bindkey "^V" vi-rev-repeat-find

# 1つ前のコマンドの最後の単語を挿入
autoload smart-insert-last-word
zle -N insert-last-word smart-insert-last-word
bindkey '^]' insert-last-word

# zargs有効に
autoload zargs


autoload -Uz git-escape-magic
git-escape-magic


# undo redo
bindkey "^[u" undo
bindkey "^[r" redo

# create ~/.zsh directory if not exist
mkdir -p $HOME/.zsh


# 先頭スペースで ls 実行
function head-space-ls () {
    if [ -z $BUFFER ]; then
        zle -U "ls
" 
    else
        LBUFFER=$LBUFFER" "
    fi
}

zle -N head-space-ls
#bindkey ' ' head-space-ls


### bookmark
BOOKMARK_BASE=$HOME/.zsh/bookmark

if [ ! -d $BOOKMARK_BASE ]
then
    mkdir -p $BOOKMARK_BASE
fi

bookmark () {
    if [ $# -eq 1 ]
    then
        name=$1
        dir=`pwd`
        echo $dir > $BOOKMARK_BASE/$name
    else
        echo '引数は一つだよ'
    fi
}

bj () {
    if [ $# -eq 1 ]
    then
        name=$1
        file=$BOOKMARK_BASE/$name
        if [ -f $file ]
        then
            dir=`cat $file`
            cd $dir
            out_screen $1
        else
            echo 'そんなブックマークはない'
        fi
    else
        echo '引数は一つだよ'
    fi
}

lb () {
  ls $BOOKMARK_BASE
}

source $HOME/.zshrc_local
source $HOME/bin_common/copipe.sh
source $HOME/my_local/.zsh/functions/up
source $HOME/my_local/.zsh/functions/u

# 3秒以上処理にかかったら、timeを表示
REPORTTIME=3

# rコマンドを無効に
disable r

export BUNDLER_EDITOR=$SHELL

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator



# コマンド履歴をpecoに置き換える(http://d.hatena.ne.jp/sugyan/touch/20140611/1402487717)

if `type peco > /dev/null`; then
  function peco_select_history() {
      local tac
      if which tac > /dev/null; then
          tac="tac"
      else
          tac="tail -r"
      fi
      BUFFER=$(fc -l -n 1 | eval $tac | peco --query "$LBUFFER")
      CURSOR=$#BUFFER             # move cursor
      zle -R -c                   # refresh
  }
  zle -N peco_select_history
  bindkey '^R' peco_select_history

  function peco_and_writeback() {
      BUFFER=$($LBUFFER | peco)
      CURSOR=$#BUFFER
      zle -R -c
  }
  zle -N peco_and_writeback
  bindkey '^K' peco_and_writeback

  # cd 履歴を記録
  typeset -U chpwd_functions
  CD_HISTORY_FILE=${HOME}/.cd_history_file # cd 履歴の記録先ファイル
  function chpwd_record_history() {
      echo $PWD >> ${CD_HISTORY_FILE}
  }
  chpwd_functions=($chpwd_functions chpwd_record_history)

  # peco を使って cd 履歴の中からディレクトリを選択
  # 過去の訪問回数が多いほど選択候補の上に来る
  function peco_get_destination_from_history() {
      sort ${CD_HISTORY_FILE} | uniq -c | sort -r | \
          sed -e 's/^[ ]*[0-9]*[ ]*//' | \
          sed -e s"/^${HOME//\//\\/}/~/" | \
          peco | xargs echo
  }

  # peco を使って cd 履歴の中からディレクトリを選択し cd するウィジェット
  function peco_cd_history() {
      local destination=$(peco_get_destination_from_history)
      [ -n $destination ] && cd ${destination/#\~/${HOME}}
      zle reset-prompt
  }
  zle -N peco_cd_history

  # peco を使って cd 履歴の中からディレクトリを選択し，現在のカーソル位置に挿入するウィジェット
  function peco_insert_history() {
      local destination=$(peco_get_destination_from_history)
      if [ $? -eq 0 ]; then
          local new_left="${LBUFFER} ${destination} "
          BUFFER=${new_left}${RBUFFER}
          CURSOR=${#new_left}
      fi
      zle reset-prompt
  }
  zle -N peco_insert_history
  # }}}




fi


### 非推奨ネットワークコマンド養成ギブス
net_tools_deprecated_message () {
  echo -n 'net-tools コマンドはもう非推奨ですよ？おじさんなんじゃないですか？ '
}

#arp () {
#  net_tools_deprecated_message
#  echo 'Use `ip n`'
#}
#ifconfig () {
#  net_tools_deprecated_message
#  echo 'Use `ip a`, `ip link`, `ip -s link`'
#}
#iptunnel () {
#  net_tools_deprecated_message
#  echo 'Use `ip tunnel`'
#}
#iwconfig () {
#  echo -n 'iwconfig コマンドはもう非推奨ですよ？おじさんなんじゃないですか？ '
#  echo 'Use `iw`'
#}
#nameif () {
#  net_tools_deprecated_message
#  echo 'Use `ip link`, `ifrename`'
#}
#netstat () {
#  net_tools_deprecated_message
#  echo 'Use `ss`, `ip route` (for netstat -r), `ip -s link` (for netstat -i), `ip maddr` (for netstat -g)'
#}
#route () {
#  net_tools_deprecated_message
#  echo 'Use `ip r`'
#}

# {{{

# crystalのキャッシュディレクトリを固定
CRYSTAL_CACHE_DIR=$HOME/.crystal




