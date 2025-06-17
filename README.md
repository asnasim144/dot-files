# Dot Files Configuration

This repository contains configuration files for various development tools. Each configuration is organized in its own directory for better management.

## Directory Structure

```
.
├── bash/           # Bash shell configuration
│   └── bashrc
├── zsh/           # Zsh shell configuration
│   └── zshrc
├── vim/           # Vim editor configuration
│   └── vimrc
├── tmux/          # Tmux terminal multiplexer configuration
│   └── tmux.conf
└── .gitignore     # Git ignore file
```

## Installation

### Bash Configuration
```bash
ln -s "$(pwd)/bash/bashrc" ~/.bashrc
```

### Zsh Configuration
```bash
# Install oh-my-zsh first
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Link configuration
ln -s "$(pwd)/zsh/zshrc" ~/.zshrc
```

### Vim Configuration
```bash
# Install vim-plug first
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Link configuration
ln -s "$(pwd)/vim/vimrc" ~/.vimrc

# Open vim and run :PlugInstall
```

### Tmux Configuration
```bash
# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Link configuration
ln -s "$(pwd)/tmux/tmux.conf" ~/.tmux.conf

# Press prefix + I to install plugins
```

## Features

### Bash/Zsh
- Custom aliases for common commands
- Git shortcuts
- Docker shortcuts
- Python virtual environment shortcuts
- Node.js shortcuts
- History configuration
- Color support
- Custom prompt

### Vim
- Syntax highlighting
- File type detection
- Custom key mappings
- Plugin management with vim-plug
- Popular plugins for development
- Code completion with COC
- Git integration
- Fuzzy finder
- Multiple cursors support

### Tmux
- Mouse support
- Custom prefix (Ctrl-a)
- Window and pane management
- Status bar customization
- Plugin management
- Useful key bindings
- Copy mode configuration

## Requirements

- Bash or Zsh shell
- Vim 8.0+
- Tmux 2.0+
- Git
- Python 3.x
- Node.js (optional)
- Docker (optional)

## Contributing

Feel free to submit issues and enhancement requests! 