# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# supress console output warning
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# fix WSL2 XDISPLAY Route IP
# export DISPLAY=$(cd /mnt/c | route.exe print | grep 0.0.0.0 | head -1 | awk '{print $4}'):0.0

# # If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/kali/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# add zsh-nvm before oh-my-zsh for best way to install node and related
export NVM_LAZY_LOAD=true
zstyle :omz:plugins:ssh-agent agent-forwarding yes

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll="ls -ltra"
alias gd="git diff"
alias gcmsg="git commit -m"
alias gitc="git checkout"
alias gitm="git checkout master"

export PATH=/home/kali/anaconda3/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#
#
export DISPLAY=:0 #  .0
# export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
export LIBGL_ALWAYS_INDIRECT=0

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet                                        
# Set list 
# let g:python3_host_prog='/home/kali/anaconda3/bin/python3'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kali/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kali/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kali/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/kali/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# minimal zplug
source ~/.zplug/init.zsh

zplug 'plugins/git',                          from:oh-my-zsh, ignore:oh-my-zsh.sh

zplug 'junegunn/fzf', from:oh-my-zsh, ignore:oh-my-zsh.sh

zplug 'Aloxaf/fzf-tab', as:plugin, use:init.sh

zplug 'zsh-users/zsh-autosuggestions', as:plugin, use:'zsh/*.zsh'

zplug 'zsh-users/zsh-syntax-highlighting', as:plugin, use:'zsh/*.zsh'

zplug "b4b4r07/enhancd", use:init.sh
# zplug "b4b4r07/enhancd", as:plugin, use:"zsh/*.zsh"

zplug 'tmux-plugins/tmux-resurrect', as:plugin, use:'zsh/*.zsh'

zplug 'tmux-plugins/tmux-sensible', as:plugin, use:'zsh/*.zsh'

zplug bobsoppe/zsh-ssh-agent, use:ssh-agent.zsh, from:github

zplug "lukechilds/zsh-nvm"

# allow zplug to mgn itself
zplug 'zplug/zplug', hook-build:'zplug --self-manage'


# Install plugins if there are plugins that have not been installed
if ! zplug check; then
#    printf "Install new zplug-plugins? [y/N]: "
#    if read -q; then
        zplug install
#    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

# allow ssh-agent to start on linux start

# ~/.zplug/repos/lukechilds/zsh-nvm ssh-agent

# set up default enhancd filter
ENHANCD_FILTER=fzf:peco; export ENHANCD_FILTER
# ~/enhancd/init.sh
# use if no zplug: curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
