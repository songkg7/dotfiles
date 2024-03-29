# dotfiles

## Init

```bash
# Install chezmoi and dotfiles from github, empty machine with a single command
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply songkg7
```

```bash
# already installed chezmoi
chezmoi init songkg7
```

## Action Required Manually

### Install

- [adguard](https://adguard.com/ko/adguard-mac/overview.html)
- [homerow](https://www.homerow.app/)
- [Rize](https://rize.io/)
- [TextSniper]()

### Start Services

System Permission Required

```bash
skhd --start-service
yabai --start-service
```

