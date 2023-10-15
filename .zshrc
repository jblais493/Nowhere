# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
if [ -f ${HOME}/.zplug/init.zsh ]; then
    source ${HOME}/.zplug/init.zsh
fi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:/home/josh/Shared/Development/flutter/bin"
#export PATH="Android/bin: $PATH"
export CHROME_EXECUTABLE=/usr/bin/chromium
export PATH=$PATH:~/.local/bin/
#scripts
export PATH=$PATH:~/.config/scripts

# Path to your oh-my-zsh installation.
export ZSH="/home/josh/.oh-my-zsh"
export EDITOR="nvim"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  npm
  zsh-interactive-cd
  z
  yarn
  ufw
  systemadmin
  pass
  minikube
  kubectl
  jsontools
  emacs
  docker
  copybuffer
  copypath
  command-not-found
  transfer
)

source $ZSH/oh-my-zsh.sh


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# autosuggestions
#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# path for GO
export PATH="$PATH:$HOME/go/bin"

# Alias 2023
alias py="python"
alias lf="/usr/local/bin/lf-ueberzug/lf-ueberzug"
alias p="sudo pacman"
alias r='lf'
alias nit='nitrogen ~/Pictures'
alias ytd='yt-dlp'
alias ytmp3="yt-dlp -f 'ba'"
alias src="source ~/.zshrc"
alias ezsh="nvim ~/.zshrc"
alias sd='cd ~ && cd "$(find * /mnt/TrueNAS -type d | fzf)"'

# Navigation
alias dev="cd ~/Development"
alias biz="cd /mnt/TrueNAS/Business"
alias org="cd ~/mnt/TrueNAS/org"
alias comp="cd ~/Shared/Documents/Computers"
alias writing="cd /mnt/TrueNAS/org/roam/Writing"
alias notes="cd /mnt/TrueNAS/Notes"
alias photos="cd /mnt/TrueNAS/Photos"
alias intbackup="cd /mnt/TrueNAS/InternetBackup"
alias f="thunar . &"
alias revere="cd /mnt/TrueNAS/Revere"
alias revereb="cd /mnt/TrueNAS/Revere/Revere\ LATEST/Brokerage"
alias commer="cd /mnt/TrueNAS/Revere/Revere\ LATEST/Brokerage/Alberta/Edmonton/Deals/2023/Commercial"
alias sellers="cd /mnt/TrueNAS/Revere/Revere\ LATEST/Brokerage/Alberta/Edmonton/Deals/2022/Sellers"
alias buyers="cd /mnt/TrueNAS/Revere/Revere\ LATEST/Brokerage/Alberta/Edmonton/Deals/2022/Buyers"
alias revsys="cd /mnt/TrueNAS/Revere/Revere\ LATEST/Systems"
alias nas="cd /mnt/TrueNAS"
alias media="cd /mnt/TrueNAS/media"
alias music="cd /mnt/TrueNAS/media/Music"
alias movies="cd /mnt/TrueNAS/media/Movies"
alias podcast="cd /mnt/TrueNAS/Business/Personal\ Brand/Podcasts"
alias mountain="cd /mnt/TrueNAS/Writing/Books/Mountain"
alias blog="cd ~/Development/JoshBlog2022"
alias personal="cd /mnt/TrueNAS/Personal"
alias ytvids="cd /mnt/TrueNAS/Videos/Youtube"
alias library="cd /mnt/TrueNAS/Library"

# Scripts
alias rs="redshift -O 4000 0.9"
alias rsx="redshift -x"
alias pg="pass generate"
alias pe="pass edit"
alias v="nvim"
alias spd="spotdl"
alias syncvault="rsync -avz --delete /mnt/TrueNAS/ /mnt/Vault/TrueNAS"
alias syncnas="rsync -avz --delete /mnt/TrueNAS/ /mnt/External4TB/TrueNAS"
alias mntnas="sudo mount -t nfs -o soft,intr,bg 172.18.250.9:/mnt/Home/Homedata/josh /mnt/TrueNAS"
alias mntexternal="sudo mount /dev/sdb1 /mnt/External4TB"
alias mntvault="sudo mount /dev/sda /mnt/Vault"
alias doomsync="~/.emacs.d/bin/doom sync"
alias doomrefresh="~/.emacs.d/bin/doom refresh"
alias reverecalc="cd /mnt/TrueNAS/Revere/Revere\ LATEST/Systems/Programs/Calculators && python ConveyancingOutput.py"
alias buyercalc="cd /mnt/TrueNAS/Revere/Revere\ LATEST/Systems/Programs/Calculators && python BuyerCommissionCalc.py"
alias record="arecord -f cd output.wav"
alias anime="~/.config/scripts/ani-cli/ani-cli"
alias brodirs="mkdir 'Brokerage Documents' 'Offer' 'Conveyancing' 'Payout' 'Posts'"
alias newpost="gimp /mnt/TrueNAS/Revere/Revere\ LATEST/Marketing/POSTS/Templates/2022\ IG\ Template\ NEW\ LISTING.xcf"
alias soldpost="gimp /mnt/TrueNAS/Revere/Revere\ LATEST/Marketing/POSTS/Templates/2022\ IG\ Template\ SOLD.xcf"
alias openhouse="gimp /mnt/TrueNAS/Revere/Revere\ LATEST/Marketing/POSTS/Templates/2022\ IG\ Template\ OPEN\ HOUSE.xcf"
alias acct="libreoffice /mnt/TrueNAS/Revere/Revere\ LATEST/Accounting/2022/Revere\ Bookkeeping\ 2022.ods"
alias convey="nvim /mnt/TrueNAS/Revere/Revere\ LATEST/Brokerage/CONVEYANCING/Information\ for\ Conveyancing/Lawyers/Lawyer\ Contact\ Information"
alias twit="gimp /mnt/TrueNAS/Personal/Twitter.xcf"
alias tw="cd ~/Development/SocialPosts && python tweet.py"
alias strip="mogrify -strip"
alias nm="neomutt"

# Networking
alias nmconnect="nmcli device wifi connect"
alias nmdown="nmcli c delete"
alias nmlist="nmcli device wifi list"
alias nmdelete="nmcli device delete"
alias startvpn="sudo systemctl start wg-quick@wg0"
alias stopvpn="sudo systemctl stop wg-quick@wg0"

# Payouts
alias letterhead="cd /mnt/TrueNAS/Revere/Revere\ LATEST/Logos\ and\ Assets/Letterhead/2022/"
alias eftinfo="gimp /mnt/TrueNAS/Revere/Revere\ LATEST/Logos\ and\ Assets/Letterhead/2022/Paid\ by\ EFT.xcf"
alias invoice="gimp /mnt/TrueNAS/Revere/Revere\ LATEST/Logos\ and\ Assets/Letterhead/2022/Commission\ Invoice\ Template.xcf"
alias cashback="gimp /mnt/TrueNAS/Revere/Revere\ LATEST/Logos\ and\ Assets/Letterhead/2022/Cashback\ Template.xcf"
alias payout="gimp /mnt/TrueNAS/Revere/Revere\ LATEST/Systems/Templates/Invoicing\ Templates/Paystub\ Template.xcf"
alias payoutBobby="gimp /mnt/TrueNAS/Revere/Revere\ LATEST/Brokerage/Alberta/Edmonton/Agents/Paystubs/Paystub\ -\ Bobby\ Kriangkum.xcf"
alias payoutCody="gimp /mnt/TrueNAS/Revere/Revere\ LATEST/Brokerage/Alberta/Edmonton/Agents/Paystubs/Paystub\ -\ Cody\ Serediak.xcf"
alias payoutSeth="gimp /mnt/TrueNAS/Revere/Revere\ LATEST/Brokerage/Alberta/Edmonton/Agents/Paystubs/Paystub\ -\ Seth\ Macdonald.xcf"
alias cinst="gimp /mnt/TrueNAS/Revere/Revere\ LATEST/Systems/Conveyancing/Templates/Conveyancing\ Instructions\ Template.xcf"

# Tmux commands
alias t="TERM=screen-256color-bce tmux"
alias ta="tmux attach -t"
alias tsf="tmux source-file ~/.tmux.conf"
alias tl="tmux ls"
alias tk="tmux kill-session -a"

# config files
alias polybar="nvim ~/.config/polybar/config"
alias bspwm="nvim ~/.config/bspwm/bspwmrc"
alias sxhkd="nvim ~/.config/sxhkd/sxhkdrc"
alias dunst="nvim ~/.config/dunst/dunstrc"
alias rofi="nvim ~/.config/rofi/config.rasi"
alias qutebrowser="cd ~/.config/qutebrowser"
alias shell="cd ~/.config/shell"
alias scripts="cd ~/.config/scripts"
alias books="cd ~/.config/scripts/bookmarks"
alias embm="cp ~/.config/scripts/bookmarks/emacsbookmarks ~/.emacs.d/.local/etc/bookmarks"
alias elf="sudo nvim /usr/local/bin/lf-ueberzug/lf-ueberzug"

# SSH

bindkey -v
bindkey -M viins 'kj' vi-cmd-mode
# this will cd and ls at the same time.
function cd {
    builtin cd "$@" && ls -F
    }

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# (cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
# cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:~/.config/bspwm

eval $(thefuck --alias)
SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
  # `command` is needed in case `lfcd` is aliased to `lf`
  cd "$(command lf -print-last-dir "$@")"
}
bindkey -s '^o' 'lfcd\n'

# Icons for lf
export LF_ICONS="\
ln=🔗:\
or=💔:\
tw=📁:\
ow=📁:\
st=📁:\
di=📁:\
pi=⏩:\
so=🔌:\
bd=🔌:\
cd=📌:\
su=📜:\
sg=📜:\
ex=📜:\
fi=📄:\
*.txt=📝:\
*.log=📄:\
*.avi=📺:\
*.mkv=📺:\
*.mp4=📺:\
*.mov=📺:\
*.srt=💬:\
*.mp3=🎶:\
*.aac=🎶:\
*.m4a=🎶:\
*.flac=🎶:\
*.ogg=🎶:\
*.wav=🎵:\
*.png=🌄:\
*.jpg=🌄:\
*.bmp=🌄:\
*.gif=🌄:\
*.tga=🌄:\
*.jpeg=🌄:\
*.svg=🌄:\
*.ico=🌄:\
*.webp=🌄:\
*.pdf=📘:\
*.md=📘:\
*.c=📜:\
*.cpp=📜:\
*.h=📜:\
*.sh=📜:\
*.js=📜:\
*.py=📜:\
*.cs=📜:\
*.css=📜:\
*.php=📜:\
*.json=📜:\
*.xml=📜:\
*.yml=📜:\
*.yaml=📜:\
*.install=📜:\
*.scm=🔧:\
*.pid=🔧:\
*.conf=🔧:\
*.cfg=🔧:\
*.cnf=🔧:\
*.ini=🔧:\
*.exe=🍷:\
*.so=📚:\
*.dll=📚:\
*.gz=📦:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.bz2=📦:\
*.xz=📦:\
*.zst=📦:\
*.deb=📦:\
*.apk=📦:\
*.iso=💿:\
*.img=💿:\
*.htm=🌍:\
*.html=🌍:\
*.torrent=🌐:\
*.pub=🔒:\
*.key=🔑:\
*.crt=🔑:\
*.pem=🔑:\
*.gpg=🔑:\
*.vbox=💻:\
*.vdi=💽:\
*.ova=📦:\
*.xls=📊:\
*.xlsx=📊:\
*.doc=📋:\
*.docx=📋:\
*.ppt=🌠:\
*.pptx=🌠:\
"
