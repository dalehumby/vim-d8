# Vim D8 assembler syntax highlighting

Plugin to add syntax highlighting to the D8 assembly files used in my [D8 CPU](https://github.com/dalehumby/d8) project.

Files with extension `.asm` will set a filetype of `d8asm`. You can also force the filetype in Vim with the command `set filetype=d8asm`

![screenshot](https://github.com/dalehumby/vim-d8/blob/main/screenshot.png)

## Installation

### Manual installation

Clone this repository to your own vim plugins folder 

```
cd your_vim_plugin_path; git clone https://github.com/dalehumby/vim-d8
```

### Plugin manager

Add to your .vimrc something like 

```
MANAGER_NAME 'dalehumby/vim-d8'
```

For example, if you're using [vim-plug](https://github.com/junegunn/vim-plug), add this to your .vimrc

```
call plug#begin('~/.vim/plugged')
Plug 'dalehumby/vim-d8'
call plug#end()
```

Then reload your .vimrc file and run the command `PlugInstall`
