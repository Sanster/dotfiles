export ZSH=/home/cwq/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git
  extract # 使用 x filename 解压文件
  autojump
)

source $ZSH/oh-my-zsh.sh

# 先安装 autojump
# git clone https://github.com/joelthelion/autojump.git && cd autojump && ./install.py
# autojump 的配置
[[ -s /home/usr/.autojump/etc/profile.d/autojump.sh ]] && source /home/usr/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

# 按tab键补全命令的时候,如果没什么可补全的就会出现三个红点
COMPLETION_WAITING_DOTS="true"

export PATH=$PATH:/home/cwq/software/node-v9.2.0-linux-x64/bin
