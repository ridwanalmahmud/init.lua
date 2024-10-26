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

### catppuccin-tmux
```
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.1.0 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
```

### tmux-cpu
```
git clone https://github.com/tmux-plugins/tmux-cpu ~/.config/tmux/plugins
```

### .tmux.conf file
```set-option -g default-terminal "screen-256color"
set -s escape-time 0

unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix
# set -g status-style 'bg=#000000 fg=#5eacd3'

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
bind -r l select-pane -R

set -g @catppuccin_flavour 'mocha' # or frappe, macchiato, mocha
set -g @catppuccin_window_number_position "right"
set -g @catppuccin_window_current_number_color "#{@thm_green}"
set -g @catppuccin_window_text ""
set -g @catppuccin_window_number "#[bold]Tab ###I "
set -g @catppuccin_window_current_text ""
set -g @catppuccin_window_current_number "#[bold]Tab ###I "
set -g @catppuccin_window_status_style "custom"
set -g @catppuccin_window_right_separator "#[fg=#{@_ctp_status_bg},reverse]#[none]"

set -g @catppuccin_window_left_separator "#[fg=#{@_ctp_status_bg}]#[none]"
set -g @catppuccin_window_middle_separator "#[bg=#{@catppuccin_window_number_color},fg=#{@catppuccin_window_text_color}]"
set -g @catppuccin_window_current_middle_separator "#[bg=#{@catppuccin_window_current_number_color},fg=#{@catppuccin_window_current_text_color}]"

# Run plugin
run ~/.config/tmux/plugins/catppuccin/tmux/catppuccin.tmux

set -g window-status-separator ""
set -g status-left-length 0
set -g status-left "#[fg=#{@thm_fg} bold]TMUX (#S) "
set -ga status-left "#{?client_prefix,#[fg=#{@thm_red} bold]PREFIX ,#[fg=#{@thm_green} bold]NORMAL }"
# set -g status-right ""
set -g status-right '#[fg=#{@thm_crust}]#{cpu_bg_color} CPU #{cpu_icon} #{cpu_percentage} '
set -ag status-right '#[bg=default] #[bg=#{@thm_flamingo}] MEM #{ram_percentage} '

# Add the colors from the pallete. Check the themes/ directory for all options.

# set -g @ctp_bg "#1e1e2e"
set -g @ctp_bg "#000000"
set -g @ctp_surface_1 "#282836"
set -g @ctp_fg "#e0e0e0"
# set -g @ctp_mauve "#c678dd"
set -g @ctp_mauve "#000000"
set -g @ctp_crust "#c678dd"

# status line
set -gF status-style "bg=#{@ctp_bg},fg=#{@ctp_fg}"

# windows
set -gF window-status-format "#[bg=#{@ctp_surface_1},fg=#{@ctp_fg}] ##I ##T "
set -gF window-status-current-format "#[bg=#{@ctp_mauve},fg=#{@ctp_crust}] ##I ##T "

run ~/.config/tmux/plugins/tmux-cpu/cpu.tmux```
