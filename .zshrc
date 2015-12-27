# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Set DEFAULT_USER to hide username@host
export DEFAULT_USER='rajatg'

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(virtualenvwrapper git ruby python)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Set up PS1 variable
# PS1="$ "
# PS1=%{%f%b%k%}$(build_prompt)

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Turn On/Off predictions in your shell
autoload predict-on
predict-toggle() {
  ((predict_on=1-predict_on)) && predict-on || predict-off
}
zle -N predict-toggle
bindkey '^Z'   predict-toggle
zstyle ':predict' toggle true
zstyle ':predict' verbose true

# virtualenv Path Environment
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/pyProjects
source /usr/local/bin/virtualenvwrapper.sh

# Path to sbt
# export PATH=/home/rajat/Applications/sbt/bin:$PATH

# postgres
PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH

# sublime
PATH=/usr/local/bin:$PATH

# Bazel
PATH=$PATH:$HOME/bin

# Anaconda
# PATH=$HOME/anaconda/bin:$PATH

# $PATH=~/anaconda/bin:$PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# System Aliases
alias upgrade="sudo do-release-upgrade -d"
alias ins="sudo apt-get install"
alias cls="sudo apt-get autoclean && sudo apt-get clean && sudo apt-get autoremove"
alias sa="sudo apt-get"
alias d="deactivate"
alias k="kill -9 %"
alias sts="sudo tlp start"
alias rmr="ps aux --sort=-%mem | awk 'NR<=10{print $0}'"
alias vuze="~ && ./Applications/vuze/azureus"
alias ij="~ && ./Applications/idea-IC-141.1532.4/bin/idea.sh"
alias srs="sudo /etc/init.d/ssh restart"
alias sc="sudo gedit /etc/ssh/sshd_config"

# C/C++ Alias
alias g++="/opt/local/bin/g++"
alias gcc="/opt/local/bin/gcc"

# Postgres Aliases
alias postgres="sudo -u postgres psql postgres"

# Tryton Aliases
alias insmod="pip install --force -U --no-deps ."
alias rsv="trytond -c ../trytond.conf"

# Virtualenvwrapper Aliases
alias wk="workon"
alias mkp="mkproject"

# Python Aliases
alias pi="pip install"
alias piu="pip install -U"
alias tt="python setup.py test"
alias ii="python setup.py install"
alias ctt="coverage run setup.py test"
alias cr="coverage report -m"
alias f="flake8 ."
alias pfg="pip freeze | grep"
alias pf="pip freeze"

# Git Aliases
alias gl="git log"
alias gpo="git push -uvf origin"
alias gpod="git push -uvf origin --delete"
alias ga="git add"
alias gc="git commit -m"
alias gca="git commit --amend -m"
alias rbd="git pull --rebase up develop"
alias rbm="git pull --rebase up master"
alias rbb="git pull --rebase up"
alias gs="git stash"
alias gsl="git stash list"
alias gsa="git stash apply"
alias gsc="git stash clear"
alias gsp="git stash pop"
alias spc="git commit --amend --no-edit"
alias gcb="git checkout -b"
alias gck="git checkout"
alias grv="git remote -v"
alias gra="git remote add"
alias gb="git branch"
alias gbd="git branch -D"
alias glt="git lfs track"
alias glu="git lfs untrack"
alias gll="git lfs ls-files"
alias grh="git reset --hard"
alias gildo="git log --all --graph --oneline --decorate"

# Django Stuff
alias dsp="django-admin.py startproject"
alias pmsa="python manage.py startapp"
alias pm='python manage.py'
alias pmr='python manage.py runserver'
alias pmrp='python manage.py runserver_plus'
alias pmrpg='pmrp --adminmedia=`pwd`/static/admin'
alias pmsdb='python manage.py syncdb'
alias pms='python manage.py shell'
alias pmsp='python manage.py shell_plus'
alias pmlf='python manage.py loaddata fixtures/*'
alias pmt='python -W ignore::DeprecationWarning manage.py test'
alias pmdm='python manage.py datamigration'
alias pmsm='python manage.py schemamigration --auto'
alias pmsi='python manage.py schemamigration --initial'
alias pmm='python manage.py migrate'
alias pmma='python manage.py migrate --all'
alias pmml='python manage.py migrate --list'
alias pmmf='python manage.py migrate --fake'
alias pmcats='python manage.py convert_to_south'

# Java/Gradle Stuff
alias ginit="gradle init --type java-library"
alias gbu="gradle clean build"
alias gj="gradle jettyRun"

# Ruby Stuff
alias irbs="irb --simple-prompt"

# sbt Path
# export PATH=/home/rajat/Applications/sbt/bin:$PATH

# IntelliJ Path
# export path=/home/rajat/Applications/idea-IC-141.1532.4/bin:$PATH

# Gradle Path
export PATH=/Users/rajatg/Applications/gradle-2.7/bin:$PATH


# Anaconda
# PATH=$HOME/anaconda/bin:$PATH

# Show/Hide Hidden Files
alias shf="defaults write com.apple.finder AppleShowAllFiles YES"
alias hdf="defaults write com.apple.finder AppleShowAllFiles NO"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Octave
alias octave="/usr/local/octave/3.8.0/bin/octave-3.8.0 ; exit;"

# Vagrant
alias vba="vagrant box add"
alias vbl="vagrant box list"
alias vini="vagrant init"
alias vu="vagrant up"
alias vsh="vagrant ssh"
alias vs="vagrant suspend"
alias vp="vagrant package"
alias vgs="vagrant global-status"
alias vh="vagrant halt"
alias vd="vagrant destroy"

# VI
alias vi="/Applications/MacVim.app/Contents/MacOS/Vim"

# added by travis gem
[ -f /Users/rajatg/.travis/travis.sh ] && source /Users/rajatg/.travis/travis.sh
