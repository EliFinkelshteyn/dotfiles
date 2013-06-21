# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

COMPLETION_WAITING_DOTS="true"
plugins=(git brew python django pip zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...

#path stuff
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
export PATH=/usr/local/Cellar/emacs/24.1/bin:/usr/local/Cellar/python/2.7.3/bin:$PATH
export PATH=/usr/local/Cellar/ruby/1.9.3-p194/bin:$PATH
export PATH=/Users/vengeanceofalf/workspace/git/elastic-mapreduce-ruby:$PATH
export PATH=/Users/vengeanceofalf/workspace/git/arcanist/bin:$PATH
source /Users/vengeanceofalf/workspace/git/arcanist/resources/shell/bash-completion
#hadoop stuff
export HADOOP_USER_NAME=EliFinkelshteyn
export PIG_CLASSPATH=/Users/vengeanceofalf/jython-2.5.4-rc1.jar
export JAVA_HOME="$(/usr/libexec/java_home)"

#easy extraction for everything:
extract () {
   if [ -f $1 ] ; then
       case $1 in
	   *.tar.bz2) tar xvjf $1 && cd $(basename "$1" .tar.bz2) ;;
	   *.tar.gz) tar xvzf $1 && cd $(basename "$1" .tar.gz) ;;
	   *.tar.xz) tar Jxvf $1 && cd $(basename "$1" .tar.xz) ;;
	   *.bz2) bunzip2 $1 && cd $(basename "$1" /bz2) ;;
	   *.rar) unrar x $1 && cd $(basename "$1" .rar) ;;
	   *.gz) gunzip $1 && cd $(basename "$1" .gz) ;;
	   *.tar) tar xvf $1 && cd $(basename "$1" .tar) ;;
	   *.tbz2) tar xvjf $1 && cd $(basename "$1" .tbz2) ;;
	   *.tgz) tar xvzf $1 && cd $(basename "$1" .tgz) ;;
	   *.zip) unzip $1 && cd $(basename "$1" .zip) ;;
	   *.Z) uncompress $1 && cd $(basename "$1" .Z) ;;
	   *.7z) 7z x $1 && cd $(basename "$1" .7z) ;;
	   *) echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

export WORKON_HOME="$HOME/.virtualenvs" 
source /usr/local/bin/virtualenvwrapper.sh
#symlinks deleted on restart
#ln -s /Users/vengeanceofalf/workspace/git/Backplane /dev/Backplane

zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==34=00}:${(s.:.)LS_COLORS}")';
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root)
