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
    Windows(Powershell)
    ```bash
    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
        ni $HOME/vimfiles/autoload/plug.vim -Force
    ```

5. install [powerline fonts](https://github.com/powerline/fonts)
    or drag and drop the included FuraMono-for-Powerline fonts.

6. install [Python](https://www.python.org/downloads/) if you haven't already. (64 bit)
7. install [node.js](https://nodejs.org/en/) (for language servers)
8. edit ```vimdir/_vimrc```: ```$vimdir/vim-cfg/_vimrc```
9. open vim then ```:PlugInstall``
10. make sure that the ```_vimrc``` is pointing to the right ``python3x.dll``