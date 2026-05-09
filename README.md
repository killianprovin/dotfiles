# dotfiles

Personal dotfiles managed with [chezmoi](https://chezmoi.io/).

## Setup on a new machine

```bash
chezmoi init --apply git@github.com:killianprovin/dotfiles.git
```

## Stack

- **Base OS**: [Bluefin DX Slimbook](https://github.com/killianprovin/bluefin-dx-slimbook) (custom Bluefin DX image)
- **Shell**: bash with [starship](https://starship.rs/), [atuin](https://atuin.sh/), [zoxide](https://github.com/ajeetdsouza/zoxide)
- **Package management**: [Homebrew](https://brew.sh/) (CLI tools), Flatpak (GUI apps)
- **Version management**: [mise](https://mise.jdx.dev/)
- **Signing**: GPG via YubiKey
