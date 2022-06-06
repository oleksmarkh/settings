# install
## Homebrew
Follow [`brew`](https://brew.sh) installation instructions.

## packages
See [`httpie`](https://httpie.org) (HTTP CLI client), [Postman](https://www.getpostman.com) (HTTP GUI client), [MusicBrainz Picard](https://picard.musicbrainz.org/) (music tagger).

```bash
$ brew install --cask iterm2 google-chrome firefox sublime-text visual-studio-code postman android-file-transfer musicbrainz-picard
$ brew install tmux coreutils tree git python pyenv httpie nginx java
```

## zsh
* Follow ["Basic Installation"](https://github.com/ohmyzsh/ohmyzsh#basic-installation).
* Edit a theme to [show full path](https://blaisdell.dev/zsh-full-file-path/).
* Add `compinit` to `~/.zshrc`.

## Command Line Tools
Follow ["How to Install Command Line Tools in Mac OS X (Without Xcode)"](http://osxdaily.com/2014/02/12/install-command-line-tools-mac-os-x).

## Node
Follow [`nvm`](https://github.com/nvm-sh/nvm) installation instructions.

```bash
$ mkdir ~/.nvm
$ nvm install node
```

## Python
[`pyenv`](https://github.com/pyenv/pyenv/), [`poetry`](https://python-poetry.org/docs/basic-usage/), [`pycodestyle`](https://pycodestyle.readthedocs.io/en/latest/), [`pytest`](https://pytest.org/en/latest/).

## Rust
Follow [`rustup`](https://doc.rust-lang.org/book/ch01-01-installation.html) and [`rustup completions`](https://rust-lang.github.io/rustup/installation/index.html#enable-tab-completion-for-bash-fish-zsh-or-powershell) installation instructions.

# setup
* [GitHub (SSH keys)](https://help.github.com/articles/connecting-to-github-with-ssh)

# tweak
## System Preferences
This section is opinionated but tries to turn default UX into a usable state.

* "General" <- almost everything :)
* "Dock"
  * "Automatically hide and show the Dock" <- on
  * "Show recent applications in Dock" <- off
* "Mission Control"
  * "Automatically rearrange Spaces" <- off
* Spotlight
  * Search Results <- only "Applications" and "Calculator"
* "Security & Privacy"
  * "General"
    * "Require password" <- immediately
    * "Show a message when the screen is locked" <- off
  * "FileVault" <- on
  * "Privacy -> Location Services"
    * "System Services -> Details... -> Significant Locations" <- off
* "Displays"
  * "Display -> Automatically adjust brightness" <- off
  * "Night Shift -> Schedule" <- "Sunset to Sunrise"
* "Keyboard"
  * "Keyboard"
    * Press fn to <- Do Nothing
    * "Use F1, F2, etc. keys as standard function keys on external keyboards" <- on
    * "Modifier Keys... -> Caps Lock" <- `^` Control
    * "Shortcuts"
      * "Input Sources" <- `⌘Space`
      * "Spotlight" <- `⌃⌘Space`
      * everything else (except Screenshots) <- off
  * "Text"
    * "Correct spelling automatically" <- off
    * "Capitalize words automatically" <- off
    * "Add period with double space" <- off
  * "Input Sources"
    * "Languages" <- British, German, Ukrainian
    * "Automatically switch to a document's input source" <- on
* "Trackpad -> Point & Click"
  * "Look up & data detectors"<- off
  * "Tap to click" <- on
  * "Tracking speed" <- faster (60%)
  * "Silent clicking" <- on
  * "Force Click and haptic feedback" <- off
* "Siri"
  * "Enable Ask Siri" <- off
* "Accessibility"
  * "Display -> Reduce motion" <- on :star:

## Finder
* "Preferences"
  * "General -> New Finder windows show" <- "Downloads"
  * "Sidebar" <- rearrange
  * "Advanced"
    * "Show all filename extension" <- on
    * "Keep folders on top -> In windows when sorting by name" <- on

## Widgets
Remove all except "Weather" and "Calendar".

## iTerm2
* "Preferences"
  * "General"
    * "Preferences"
      * "Load preferences from a custom folder or URL" <- on, select a folder
      * "Save changes" <- "When Quitting"
    * "Selection"
      * "Applications in terminal may access clipboard" <- on
  * "Profiles"
    * "Colors"
      * "Color Presets..." <- "Dark Background" or download and import [Nord](https://github.com/arcticicestudio/nord-iterm2)
    * "Text"
      * "Change Font" <- "14pt Menlo Regular"
    * "Keys" (see [Use ⌥ ← and ⌥→ to jump forwards / backwards words in iTerm 2, on OS X](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x))
      * "Left ⌥ Key" <- "Esc+"
      * "Key Mappings"
        * "⌥←"
          * "Action" <- "Send Escape Sequence"
          * "Esc+" <- "b"
        * "⌥→"
          * "Action" <- "Send Escape Sequence"
          * "Esc+" <- "f"
