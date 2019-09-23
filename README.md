# myvim

## 安装[vim-plug](https://github.com/junegunn/vim-plug/)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## 安装ctags

### ubuntu

```bash
sudo apt-get install ctags
```

### manjaro

```bash
sudo pacman -S ctags
```

## 覆盖文件

```bash
cp -r .vim/plugin ~/.vim/
cp .vimrc ~/.vimrc
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