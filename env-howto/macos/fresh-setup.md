# install

## manually

* [Logitech Control Center](http://support.logitech.com/en_us/software/logitech-control-center-for-macintosh-os-x)

## semi-automatically

### Homebrew

Follow [`brew`](https://brew.sh) installation instructions.

### packages (apps, utils etc.)

See [`httpie`](https://httpie.org) (HTTP CLI client), [Postman](https://www.getpostman.com) (HTTP GUI client), [MusicBrainz Picard](https://picard.musicbrainz.org/) (music tagger).

```bash
$ brew install --cask iterm2 google-chrome firefox sublime-text visual-studio-code postman java android-file-transfer musicbrainz-picard
$ brew install tmux bash bash-completion coreutils tree git python pyenv httpie nginx
```

### Command Line Tools

Follow ["How to Install Command Line Tools in Mac OS X (Without Xcode)"](http://osxdaily.com/2014/02/12/install-command-line-tools-mac-os-x).

### Node

Follow [`nvm`](https://github.com/nvm-sh/nvm) installation instructions.

```bash
$ mkdir ~/.nvm
$ nvm install node
```

### Python

[`pyenv`](https://github.com/pyenv/pyenv/), [`poetry`](https://python-poetry.org/docs/basic-usage/), [`pycodestyle`](https://pycodestyle.readthedocs.io/en/latest/), [`pytest`](https://pytest.org/en/latest/).

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
* "Security & Privacy"
  * "General"
    * "Require password" <- immediately
    * "Show a message when the screen is locked" <- off
  * "Privacy -> Location Services"
    * "Weather" <- on
    * "System Services -> Details... -> Significant Locations" <- off
* "Displays"
  * "Display -> Automatically adjust brightness" <- off
  * "Night Shift -> Schedule" <- "Sunset to Sunrise"
* "Keyboard"
  * "Keyboard"
    * "Use F1, F2, etc. keys as standard function keys on external keyboards" <- on
    * "Modifier Keys... -> Caps Lock" <- `^` Control
    * "Customize Control Strip..."
    * "Shortcuts"
      * "Mission Control" (contradicts with Sublime Text, e.g. multicursor)
        * "Mission Control" <- off
        * "Application windows" <- off
        * "Show Dashboard" <- off
      * "Input Sources" <- `⌘Space`
      * "Spotlight" <- `⌃⌘Space`
  * "Text"
    * "Correct spelling automatically" <- off
    * "Capitalize words automatically" <- off
    * "Add period with double space" <- off
  * "Input Sources"
    * Languages
      * - "U.S."
      * + "British"
      * + "Ukrainian" 🇺🇦 (or better [`bandera-layout`](https://github.com/muromec/bandera-layout))
    * "Automatically switch to a document's input source" <- on
* "Trackpad -> Point & Click"
  * "Look up & data detectors"<- off
  * "Tap to click" <- on
  * "Tracking speed" <- faster (60%)
  * "Silent clicking" <- on
  * "Force Click and haptic feedback" <- off
* "Siri"
  * "Enable Siri" <- off
* "Date & Time"
  * "Clock -> Date options -> Show date" <- on
* "Accessibility"
  * "Display -> Reduce motion" <- on :star:

## Finder

* "Preferences"
  * "General -> New Finder windows show" <- home
  * "Sidebar" <- rearrange
  * "Advanced"
    * "Show all filename extension" <- on
    * "Keep folders on top when sorting by name" <- on

## iTerm2

* "Preferences -> Profiles"
  * "Colors"
    * "Color Presets..." <- "Dark Background"
    * "Basic Colors"
      * "Background" <- `#112233`
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
