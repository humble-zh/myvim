# myvimrc

## 安装[vim-plug](https://github.com/junegunn/vim-plug/)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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

```bash
cd $(当前目录)
ln -s $(pwd)/.vimrc ~/.vimrc
cp -r .vim/plugin ~/.vim/
```

### 如果装了neovim
```bash
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
```

## 打开vim安装插件

```bash
vim
:PlugInstall
```

## 安装[YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)

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
