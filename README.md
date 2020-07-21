# myvimrc

## 安装[vim-plug](https://github.com/junegunn/vim-plug/)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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
