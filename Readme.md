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

如果出现 `Failed to connect to raw.githubusercontent.com port 443: Connection refused` ,就在/etc/hosts文件追加

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

## 安装插件

```bash
#!/usr/bin/zsh

plink="https://github.91chi.fun//https://github.com/"
olink="https://github.com/"

a="mhinz"
b="vim-startify"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="vim-airline"
b="vim-airline"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="vim-airline"
b="vim-airline-themes"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="sjl"
b="badwolf"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="airblade"
b="vim-gitgutter"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="vim-scripts"
b="winmanager"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="terryma"
b="vim-multiple-cursors"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="brooth"
b="far.vim"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="easymotion"
b="vim-easymotion"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="itchyny"
b="vim-cursorword"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="lfv89"
b="vim-interestingwords"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="dense-analysis"
b="ale"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="farmergreg"
b="vim-lastplace"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="xolox"
b="vim-misc"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="xolox"
b="vim-session"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="junegunn"
b="vim-easy-align"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="tpope"
b="vim-surround"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="tpope"
b="vim-abolish"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="vim-utils"
b="vim-man"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="ctrlpvim"
b="ctrlp.vim"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="vim-scripts"
b="taglist.vim"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="vim-scripts"
b="ag.vim"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="godlygeek"
b="tabular"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="plasticboy"
b="vim-markdown"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="kannokanno"
b="previm"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="tyru"
b="open-browser.vim"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="SirVer"
b="ultisnips"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }

a="honza"
b="vim-snippets"
git clone ${plink}${a}/${b} ~/.vim/plugged/${b} && { cd ~/.vim/plugged/${b} && git remote set-url origin ${olink}${a}/${b}; cd ; }


echo "please install  'neoclide/coc.nvim', {'branch': 'release'} at last"
```

或

```bash
vim
:PlugInstall
```

或

```bash
vim +PluginInstall +qall
```

## 安装[coc.nvim](https://github.com/neoclide/coc.nvim)

### 安装nodejs

[如何在 Ubuntu 20.04 上安装 Node.js 和 npm](https://zhuanlan.zhihu.com/p/140961618)

```bash
#manjaro
sudo pacman -S bear ccls npm
#nodejs-lts-erbium
#ubuntu
#curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install nodejs

cd $(当前目录)
ln -s $(pwd)/coc-settings.json ~/.vim/
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


---

1. 若报错

```
[coc.nvim] build/index.js not found, please install dependencies and compile coc.nvim by: yarn install
```

[解决方案](https://blog.csdn.net/qq_34548075/article/details/120092169)

```bash
sudo npm install -g yarn
cd ~/.vim/plugged/coc.nvim/
yarn install
yarn build
```

2. 若报错

```
[coc.nvim] Error: Error on execute :pyx command, ultisnips feature of coc-snippets requires pyx support on vim.
```

a. [ubuntu18.04安装python3.7](https://blog.csdn.net/JohnJim0/article/details/108226362)

ubuntu18.04
```bash
apt-get update
sudo apt-get -y install python3.7
```

ubuntu16.04
```bash
apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev wget libbz2-dev
cd /opt
#wget https://www.python.org/ftp/python/3.7.5/Python-3.7.5.tgz
wget https://www.python.org/downloads/release/python-375/
tar -xzvf Python-3.7.5.tgz
cd Python-3.7.5
./configure --enable-optimizations
make
make install
```

b. 切换

```bash
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 2
#sudo update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.7 2
sudo update-alternatives --config python3
python3 -m pip install pip
```

3. 若报错

```
[coc.nvim] Unable to load global extension at /home/xxx/.config/coc/extensions/node_modules/coc-ccls: main file ./lib/extension.js not found, you may need to build the project
```

[解决方案](https://github.com/neoclide/coc.nvim/issues/2088#issuecomment-648801572)

```bash
cd ~/.config/coc/extensions/node_modules/coc-ccls
ln -s node_modules/ws/lib lib
```

---

```bash
cd src/
make clean
bear -- make
```

安装命令`:CocInstall 插件名`

移除命令`:CocUninstall 插件名`

查看已安装`:CocList extensions`

更新命令`:CocUpdate`
