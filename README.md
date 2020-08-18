# myvimrc

## 安装[vim-plug](https://github.com/junegunn/vim-plug/)

### vim

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### neovim

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

如果出现 ```Failed to connect to raw.githubusercontent.com port 443: Connection refused``` ,就在/etc/hosts文件追加

```bash
199.232.28.133 raw.githubusercontent.com
```

## 安装ctags

### ubuntu

```bash
sudo apt-get install ctags cmake
```

### manjaro

```bash
sudo pacman -S ctags cmake
```

## 使用配置文件

### vim

```bash
cd $(当前目录)
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.vim/plugin/ ~/.vim/
```

### neovim
```bash
ln -s $(pwd)/.vim ~/.config/nvim
ln -s $(pwd)/.vimrc ~/.config/nvim/init.vim
```

## 打开vim安装插件

```bash
vim
:PlugInstall
```

## 安装[coc.nvim](https://github.com/neoclide/coc.nvim)

---

## (NO)安装[YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)

```bash
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --clang-completer
```

```bash
ln -s $(pwd)/ycm_extra_conf.py ~/.ycm_extra_conf.py
```

```bash
pip3 install neovim
```
