# dotfiles

## Init

1. Install command line tools

```bash
xcode-select --install
```

2. Install chezmoi

> [!IMPORTANT]
> Perhaps due to security issues, this process will not be completed normally.
> Please try again after completing the 1Password authentication.

```bash
# Install chezmoi and dotfiles from github, empty machine with a single command
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply songkg7

# already installed chezmoi
chezmoi init songkg7 --apply
```

```bash
# After chezmoi init
mise trust
mise install

# Start docker service
orb start # Personal use only
## or
colima start --network-address # work (lisence issue)
```

```bash
# MacOS Settings
defaults write com.apple.dock persistent-apps -array
```

## Action Required Manually

### Install

- [homerow](https://www.homerow.app/)

## Before formatting a mac

- [ ] Make sure all files are up to date with chezmoi

```bash
cd ~

# Save Homebrew's installed package list to a Brewfile
brew bundle dump --force

# Re-add linked files
chezmoi re-add
```

Review changes and commit

- [ ] Elgato Stream Deck Profile Backup
- [ ] Raycast Settings Backup

