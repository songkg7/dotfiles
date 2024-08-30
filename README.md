# dotfiles

## Init

1. Install command line tools

```bash
xcode-select --install
```

2. Install chezmoi

> [!IMPORTANT]
> Perhaps this process will not completed normally due to rights issues, etc.
> Please try again after completing the 1password authentication.

```bash
# Install chezmoi and dotfiles from github, empty machine with a single command
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply songkg7
```
```bash
# already installed chezmoi
chezmoi init songkg7 --apply
```

```bash
mise trust
mise install

# Start docker service
orb start # Personal use only
## or
colima start --network-address # work (lisence issue)
```

## Action Required Manually

### Install

- [homerow](https://www.homerow.app/)
- [Rize](https://rize.io/)

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

