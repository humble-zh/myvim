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

### vim && neovim

```bash
cd $(当前目录)
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.vim/plugin/ ~/.vim/
ln -s $(pwd)/.vim/UltiSnips/ ~/.vim/
mkdir -p ~/.config
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
```

## 打开vim安装插件

```bash
vim
:PlugInstall
```

或

```bash
vim +PluginInstall +qall
```

## 安装[coc.nvim](https://github.com/neoclide/coc.nvim)

```bash
sudo pacman -S nodejs bear ccls
```

`:CocInfo` 出现版本号表示安装成功

`:CocConfig` 输入配置

```json
{
    "languageserver": {
        "ccls": {
            "command": "ccls",
            "filetypes": ["c", "cc", "cpp", "c++", "objc", "objcpp"],
            "rootPatterns": [".ccls", "compile_commands.json", ".git/", ".hg/"],
            "initializationOptions": {
                "cache": {
                    "directory": "/tmp/ccls"
                }
            }
        }
    }
}
```

`:CocInstall coc-json coc-ccls coc-snippets` 安装插件


若报错如下，[解决方案](https://github.com/neoclide/coc.nvim/issues/2088#issuecomment-648801572)
```
[coc.nvim] Unable to load global extension at /home/xxx/.config/coc/extensions/node_modules/coc-ccls: main file ./lib/extension.js not found, you may need to build the project
```

```bash
cd src/
make clean
bear -- make
```

安装命令`:CocInstall 插件名`

移除命令`:CocUninstall 插件名`

查看已安装`:CocList extensions`

更新命令`:CocUpdate`




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
