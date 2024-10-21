### prerequisites
- Neovim
- tmux
- zsh
- git
```
sudo apt install neovim git tmux zsh
```
### neovim conf
```
mkdir .config && cd .config
```
```
git clone "https://github.com/ridwanalmahmud/init.lua.git"
```
### nerd-fonts
```
curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/JetBrainsMono/Ligatures/Regular/JetBrainsMonoNerdFont-Regular.ttf
```
> move the font in there proper place according to your os
### oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### .tmux.conf file
```set -ga terminal-overrides ",screen-256color*:Tc"
set-option -g default-terminal "screen-256color"
set -s escape-time 0

unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix
set -g status-style 'bg=#000000 fg=#5eacd3'

bind r source-file ~/.tmux.conf
set -g base-index 1

unbind r
bind r source-file ~/.tmux.conf
bind -r m resize-pane -Z

set-window-option -g mode-keys vi
bind -T copy-mode-vi v send-keys -X begin-selection
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'

# vim-like pane switching
bind -r ^ last-window
bind -r k select-pane -U
bind -r j select-pane -D
bind -r h select-pane -L
bind -r l select-pane -R```
