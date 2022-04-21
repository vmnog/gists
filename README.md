# How to install and config nvim

1. Install nvim https://github.com/neovim/neovim/wiki/Installing-Neovim
2. Install vim-plug https://github.com/junegunn/vim-plug
3. Copy init.vim to your ~/.config/nvim/
4. Open init.vim with nvim `$ nvim ~/.config/nvim/init.vim` 
5. Install plugins `:PlugInstall`
6. Re-open nvim


# gists
my configs for alias, git, nvim configs and plugins, tmux etc

Nvim Shortcuts

| Description | Command |
| --- | --- |
| Split vertically | Ctrl+w  + v |
| Split horizontally | Ctrl+w  + s |
| Open searched file in split vertical | :vs [file path] |
| Opens terminal current window | :ter |
| Exit terminal mode  | Ctrl+\ Ctrl+n |
| Switch between vim panes | Ctrl + ww |
| Copy current line | yy |
| Paste clipboard | p |
| Exit all vim panes  | :qa |
| Search in all project | :Ag [expression] |
| Search in current file | /[expression] |
| Navigate between search in file results | Enter (get first result) → n (jump to next result) |
| Scroll Down (half screen) | Ctrl+d |
| Scroll Up (half screen) | Ctrl+u |
| Delete current word (keep spaces) | ciw |
| Navigate next word (consider special characters) | e |
| Navigate previous word (consider special characters) | b |
| Navigate next sentence | Shift+e |
| Navigate previous sentence  | Shift+b |
| Search pattern using Vimgrep | :vimgrep <expression> <path> :vimgrep /Esse é o seu/ src/**/**.html |
| While in Vimgrep result:  jump next occurrence | :cn |
| While in Vimgrep result:  jump previous occurrence | :cp |
| While in Vimgrep result:  jump next occurrence file | :cnf |
| While in Vimgrep result:  jump previous occurrence file | :cpf |
| For installing new plugins listed in init.vim | :PlugInstall  |
| Open file in current vim editor pane | :e [file path] |
| Jump to first line of file | Shift+g |
| Jump to last line of file | gg |
| Select current line | Shift+v |
| Indent selection | >  |
| Desindent selection | < |
| jump to end of the line | $ |
| jump to start of the line | 0 |
| jump to next matching character | f + <character> |
| updates current file name | :e |
| start recording macro | qa |
| stop recording macro | q |
| run macro created | @a |
| repeat run last macro  | @@ |
| enter insert mode at cursor position | i |
| enter insert mode after cursor position | a |
| enter insert mode in the end of the line  | A |
| enter insert mode creating a new line below | o |
| select whole function block scope  | shift + v% |
| (neoclide-coc) go to definition | gd |
| (neoclide-coc) show documentation in preview  | K |
| (neoclide-coc) selecting range increasing | ctrl + s |
| Change only whole words exactly matching 'foo' to 'bar'; ask for confirmation. | :%s/\<foo\>/bar/gc |
| Navigate back | ctrl + o |
| Navigate foward | ctrl + i |
| Set a mark | m + [any letter] |
| Navigate to a mark start of line | ‘ + [letter setted previously] |
| Navigate to a mark in specific cursor position | ` + [letter setted previously] |
| Create file / folder | ctrl + t (toggle nerd tree) + m (open menu) + a (create node) |
| NerdTree open file | ctrl + t (nerd tree) → o |
| NerdTree open file in split horizontal | ctrl + t (nerd tree) → i |
| NerdTree open file in split vertical | ctrl + t (nerd tree) → s |
| Undo | u |
| Redo | ctrl + r |
| Open Current file in NerdTree (custom config) | ctrl + a |
| Open NerdTree (custom config) | ctrl + t |
