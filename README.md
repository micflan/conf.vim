# Conf.vim

This is my vim setup. Intended for my own personal use but feel free.

This is hugely based on the *[Maximum Awesome](https://github.com/square/maximum-awesome)*
config files for Mac OS X, which also has configs for iTerm2 and Tmux.

This one's just Vim but should install fine on any \*nix system.

### some of the vim bindings

* `,d` brings up [NERDTree](https://github.com/scrooloose/nerdtree), a sidebar buffer for navigating and manipulating files
* `,t` brings up [ctrlp.vim](https://github.com/kien/ctrlp.vim), a project file filter for easily opening specific files
* `,b` restricts ctrlp.vim to open buffers
* `,a` starts project search with [ack.vim](https://github.com/mileszs/ack.vim) using [ag](https://github.com/ggreer/the_silver_searcher) (like ack)
* `ds`/`cs` delete/change surrounding characters (e.g. `"Hey!"` + `ds"` = `Hey!`, `"Hey!"` + `cs"'` = `'Hey!'`) with [vim-surround](https://github.com/tpope/vim-surround)
* `\\\` toggles current line comment
* `\\` toggles visual selection comment lines
* `vii`/`vai` visually select *in* or *around* the cursor's indent
* `,[space]` strips trailing whitespace
* `<C-]>` jump to definition using ctags
* `,l` begins aligning lines on a string, usually used as `,l=` to align assignments
* `<C-hjkl>` move between windows, shorthand for `<C-w> hjkl`


## Install
Just clone the repository and run `./install.sh`

## Customize
In your home directory, a `.vimrc.local` file is where you can customize
Vim to your heart’s content.

## Backup
Your old .vim config files and folders saved within `conf.vim/backup`


## Acknowledgements
Again, *[Maximum Awesome](https://github.com/square/maximum-awesome)* by Square was my jumping off
point and all credit goes them, as well as the authors of the awesome vim plugins included.
