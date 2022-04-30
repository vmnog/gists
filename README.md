# How to install and config nvim

01. Install nvim https://github.com/neovim/neovim/wiki/Installing-Neovim
00. Install vim-plug https://github.com/junegunn/vim-plug
1. Open your coc-vim repo (`/home/YOUR_USERNAME/.local/share/nvim/plugged/coc.nvim` or `/home/brasilprev/.config/nvim/plugged/coc.nvim`) and run `$ yarn install` 
2. Copy init.vim to your ~/.config/nvim/
3. Open init.vim with nvim `$ nvim ~/.config/nvim/init.vim` 
4. If you use asdf, change the variable `let g:coc_node_path = '/home/YOUR_USERNAME/.asdf/shims/node`
5. Install plugins `:PlugInstall`
6. Install Coc Plugins `:CocInstall coc-json coc-tsserver`
7. Re-open nvim
8. Run `:BlamerToggle` for activating git tracking in lines (gitlens)


# gists
my configs for alias, git, nvim configs and plugins, tmux etc

# vim

| Description | Command |
| --- | --- |
| Split vertically | Ctrl+w  + v |
| Split horizontally | Ctrl+w  + s |
| Open searched file in split vertical | :vs [file path (optional)] |
| Enter terminal mode  | :ter |
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
| Search pattern using Vimgrep | :vimgrep <expression> <path> <br/> :vimgrep `/Esse é o seu/ src/**/**.html` |
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
| Select content, delete and enter insert mode | v + c |
| After using “/<pattern>” for search in file, exit search results (custom) | esc + esc |
| Enter move window mode  | ctrl + w |
| Move current pane left | ctrl + w (move window mode) ctrl + R |
| Move current pane right | ctrl + w (move window mode) ctrl + r |
| Navigate between panes by direction  | ctrl + w + <hjkl> |
| Move current pane to very direction | ctrl + w + <HJKL> |
| Remove next spaces and returns | shift + j |
| navigate direction by N lines / characters | (number) + (direction hjlk) → 10j 10k 10l 10h |
