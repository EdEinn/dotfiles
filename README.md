## file structure
~/dotfiles/  
├── git/  
│   └── .gitconfig  
├── zsh/  
│   └── .zshrc  
├── neovim/  
│   └── .config/  
│       └── nvim/  
│           ├── init.vim  
│           └── ...  
└── .gitignore  

## Usage for MacOS

```zsh
cd ~
git clone ...
cd ~/dotfiles
stow git
stow zsh
stow neovim
```
> ~/dotfiles/git/.gitconfig will be linked to ~/.gitconfig

