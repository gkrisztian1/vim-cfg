# vim-cfg
My super duper ```_vimrc```

# Installation

1. Download Vim https://www.vim.org/download.php#pc : self installing executable (gvim82.exe)
2. set environmental variable for vim installation folder
```bash
set vimdir=C:\Vim
```
3. clone this repo
```bash
git clone https://github.com/gkrisztian1/vim-cfg.git $vimdir
```
4. install [vim-plug](https://github.com/junegunn/vim-plug):
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
 
5. install [powerline fonts](https://github.com/powerline/fonts)
    or drag and drop the included FuraMono-for-Powerline fonts.

6. install [Python](https://www.python.org/downloads/) if you haven't already. (64 bit)
7. install [node.js](https://nodejs.org/en/) (for language servers)
8 install coc-pyright: ```CocInstall coc-pyright```
9. edit ```vimdir/_vimrc```: ```source $vimdir/vim-cfg/_vimrc```
10. open vim then ```:PlugInstall``


## Powerline

https://www.tecmint.com/powerline-adds-powerful-statuslines-and-prompts-to-vim-and-bash/

## CocConfig
```
"suggest.noselect": false
```

## Keys
In ```gnome-tweak-tools``` Keyboard & Mouse -> Additional Layout Options -> Ctrl position -> Swap Ctrl and Caps Lock
