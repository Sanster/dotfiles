# Install oh-my-zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

export ZSH=/home/cwq/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git
  extract # 使用 x filename 解压文件
  autojump
  # 首先 clone plugin，$ZSH_CUSTOM 默认目录为 ~/.oh-my-zsh/custom/plugins
  # git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# 先安装 autojump
# git clone https://github.com/joelthelion/autojump.git && cd autojump && ./install.py
# autojump 的配置
[[ -s /home/cwq/.autojump/etc/profile.d/autojump.sh ]] && source /home/cwq/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

# 按tab键补全命令的时候,如果没什么可补全的就会出现三个红点
COMPLETION_WAITING_DOTS="true"

# to enable zsh-autosuggestions works in tmux
export TERM=xterm-256color

# alias
# apt-get install xclip
alias xc='xargs echo -n | xclip -selection primary -f | xclip -selection clipboard'

alias kcat='kitty icat'

# press CTRL-y to quit fzf and copy the select line to clipboard
alias fzf="fzf --bind 'f1:execute(less -f {}),ctrl-y:execute-silent(echo {} | pbcopy)+abort'"
