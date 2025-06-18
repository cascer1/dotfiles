# dotfiles

## Setup dotfiles

On Linux

```bash
sh -c "$(curl -fsLS get.chezmoi.io/lb)"

~/.local/bin/chezmoi init --apply cascer1
```

On Windows

```powershell
winget install twpayne.chezmoi

chezmoi init --apply cascer1
```

## Set ZSH as default shell

```bash
chsh -s $(which zsh)
```

## Updating dotfiles

```bash
chezmoi update
```

