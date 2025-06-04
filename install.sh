#!/bin/bash

git config --global core.quotepath false
git config user.name "humble-zh"; git config user.email "humble_zh@163.com";
git config credential.helper 'store --file /home/zh/li/.github-humble-credentials'

f=~/.vim/autoload/plug.vim
[ -f $f ] && echo "$f ok" || { curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim; }

f=~/.vimrc
[ -L $f ] && echo "$f ok" || ln -s $(pwd)/.vimrc $f

f=~/.vim/plugin
[ -L $f ] && echo "$f ok" || ln -s $(pwd)/.vim/plugin/ ~/.vim/

f=~/.vim/UltiSnips
[ -L $f ] && echo "$f ok" || ln -s $(pwd)/.vim/UltiSnips/ ~/.vim/

echo "please run vim :PlugInstall"

# [ -f ~/.local/share/nvim/site/autoload/plug.vim ] || {
#     sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim';
# }

#  mkdir -p ~/.config
#  [ -L ~/.config/nvim ] || ln -s ~/.vim ~/.config/nvim
#  [ -L ~/.config/nvim/init.vim ] || ln -s ~/.vimrc ~/.config/nvim/init.vim
#
#  [ -L ~/.vim/coc-settings.json ] || ln -s ~/.li/.myvim/coc-settings.json ~/.vim/
#
#
#  plink="https://github.com.cnpmjs.org/"
#  olink="https://github.com/"
#
#  function dl_git_plug(){
#      git clone ${plink}$1/$2 ~/.vim/plugged/$2 && { cd ~/.vim/plugged/$2 && git remote set-url origin ${olink}$1/$2; cd ; }
#  }
#  dl_git_plug "mhinz" "vim-startify"
#  dl_git_plug "vim-airline" "vim-airline"
#  dl_git_plug "vim-airline" "vim-airline-themes"
#  dl_git_plug "sjl" "badwolf"
#  dl_git_plug "airblade" "vim-gitgutter"
#  dl_git_plug "vim-scripts" "winmanager"
#  dl_git_plug "terryma" "vim-multiple-cursors"
#  dl_git_plug "brooth" "far.vim"
#  dl_git_plug "easymotion" "vim-easymotion"
#  dl_git_plug "itchyny" "vim-cursorword"
#  dl_git_plug "lfv89" "vim-interestingwords"
#  dl_git_plug "dense-analysis" "ale"
#  dl_git_plug "farmergreg" "vim-lastplace"
#  dl_git_plug "xolox" "vim-misc"
#  dl_git_plug "xolox" "vim-session"
#  dl_git_plug "junegunn" "vim-easy-align"
#  dl_git_plug "tpope" "vim-surround"
#  dl_git_plug "tpope" "vim-abolish"
#  dl_git_plug "vim-utils" "vim-man"
#  dl_git_plug "ctrlpvim" "ctrlp.vim"
#  dl_git_plug "vim-scripts" "taglist.vim"
#  dl_git_plug "vim-scripts" "ag.vim"
#  dl_git_plug "godlygeek" "tabular"
#  dl_git_plug "plasticboy" "vim-markdown"
#  dl_git_plug "kannokanno" "previm"
#  dl_git_plug "tyru" "open-browser.vim"
#  dl_git_plug "SirVer" "ultisnips"
#  dl_git_plug "honza" "vim-snippets"
#
#  echo "please install  'neoclide/coc.nvim', {'branch': 'release'} at last"
