# dotfiles

```bash
# Install chezmoi and dotfiles from github, empty machine with a single command
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply songkg7
```

```bash
# already installed chezmoi
chezmoi init songkg7
```

```toml
# ~/.config/chezmoi/chezmoi.toml
[data]
    mode = "private" or "work"
```

