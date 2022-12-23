# install
## Homebrew
Follow [`brew`](https://brew.sh) installation instructions.

## packages
See [`httpie`](https://httpie.org) (HTTP CLI client), [Postman](https://www.getpostman.com) (HTTP GUI client), [MusicBrainz Picard](https://picard.musicbrainz.org/) (music tagger).

```bash
$ brew install --cask google-chrome firefox sublime-text visual-studio-code postman android-file-transfer musicbrainz-picard
$ brew install coreutils tree git python pyenv httpie nginx java
```

## zsh
* Follow ["Basic Installation"](https://github.com/ohmyzsh/ohmyzsh#basic-installation).
* Edit a theme to [show full path](https://blaisdell.dev/zsh-full-file-path/).
* Run `compinstall` (adds `compinit` to `~/.zshrc`).

## Node
Follow [`nvm`](https://github.com/nvm-sh/nvm) installation instructions.

```bash
$ nvm install node
```

## Python
[`pyenv`](https://github.com/pyenv/pyenv/), [`poetry`](https://python-poetry.org/docs/basic-usage/), [`pycodestyle`](https://pycodestyle.readthedocs.io/en/latest/), [`pytest`](https://pytest.org/en/latest/).

## Rust
Follow [`rustup`](https://doc.rust-lang.org/book/ch01-01-installation.html) and [`rustup completions`](https://rust-lang.github.io/rustup/installation/index.html#enable-tab-completion-for-bash-fish-zsh-or-powershell) installation instructions (including `cargo` completions).

```bash
$ rustup help completions
```

# add SSH keys
[GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh), [GitLab](https://docs.gitlab.com/ee/user/ssh.html).

# tweak
## System Preferences (Ventura)
This section is opinionated but tries to turn default UX into a usable state.

* Sound
  * Play sound on startup: off
* Screen Time: off
* Appearance: Dark
* Accessibility
  * Display -> Reduce motion: on :star:
* Control Centre
  * Keyboard Brightness: Show in Control Centre
* Siri & Spotlight
  * Ask Siri: off
  * Spotlight -> Search results: all off except Applications and Calculator
* Desktop & Dock
  * Size: 30%
  * Dock
    * Automatically hide and show the Dock: on
    * Show recent applications in Dock: off
  * Mission Control
    * Automatically rearrange Spaces: off :star:
* Privacy & Security
  * FileVault: on
* Displays
  * Display -> Automatically adjust brightness: off
  * Night Shift -> Schedule: Sunset to Sunrise
* Lock Screen
  * Require password: immediately
  * Show message when locked: off
* Game Center: off
* Keyboard
  * Keyboard brightness: 5%
  * Turn keyboards brightness off after inactivity: 5min
  * Press globe key to: do nothing
  * Keyboard Shortcuts
    * Input Sources: `⌘Space`
    * Spotlight: `⌃⌘Space`
    * Function Keys -> Use F1, F2, etc. keys as standard function keys on external keyboards: on
    * Modifier Keys -> Caps Lock: Control
    * everything else (except Screenshots): off
  * Text Input -> Input Sources
    * Languages: British, Ukrainian
    * Edit...
      * Automatically switch to a document's input source: on
      * Correct spelling automatically: off
      * Capitalize words automatically: off
      * Add full stop with double-space: off
* Trackpad -> Point & Click
  * Tracking speed: 60%
  * Click: light
  * Force Click and haptic feedback: off
  * Look up & data detectors: off
  * Tap to click: on

## Finder
* Preferences
  * General -> New Finder windows show: Downloads
  * Sidebar: rearrange
  * Advanced
    * Show all filename extension: on
    * Keep folders on top -> In windows when sorting by name: on

## Widgets
Remove all except Weather and Calendar.
