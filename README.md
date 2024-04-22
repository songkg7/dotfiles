# dotfiles

## Init

1. Install command line tools

```bash
xcode-select --install
```

2. Install chezmoi

```bash
# Install chezmoi and dotfiles from github, empty machine with a single command
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply songkg7
```

```bash
# already installed chezmoi
chezmoi init songkg7 --apply
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

## Before formatting a mac

Make sure all files are up to date with chezmoi

```bash
cd ~

# Save Homebrew's installed package list to a Brewfile
brew bundle dump --force

# Re-add linked files
chezmoi re-add
```

Review changes and commit
