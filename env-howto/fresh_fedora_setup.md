# install

## automatically

```bash
$ sudo dnf install gnome-tweak-tool tilda tmux xclip \
python-devel bpython nano vim-enhanced \
htop nmon httpie \
pinta gimp

$ sudo pip install virtualenvwrapper

$ sudo npm install -g tldr gtop
```

## manually

* [Nodejs](https://github.com/nodesource/distributions#rpminstall)
* [Chrome](http://www.if-not-true-then-false.com/2010/install-google-chrome-with-yum-on-fedora-red-hat-rhel/)
* [Skype](http://www.if-not-true-then-false.com/2012/install-skype-on-fedora-centos-red-hat-rhel-scientific-linux-sl/)
* [Sublime](https://gist.github.com/ahockersten/9781d1233e2bb125b458) with [Package Control](https://packagecontrol.io/installation)
* [Dropbox](https://www.dropbox.com/install?os=lnx) - `.rpm` package
* [VirtualBox](http://www.if-not-true-then-false.com/2010/install-virtualbox-with-yum-on-fedora-centos-red-hat-rhel/) with [Windows](https://dev.windows.com/en-us/microsoft-edge/tools/vms/linux/)


# tweak

## dotfiles

* [.bashrc](https://github.com/oleksmarkh/settings/blob/master/os/.bashrc)
* [.vimrc](https://github.com/oleksmarkh/settings/blob/master/vim/.vimrc)

## inotify watchers

```bash
$ echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

(see https://github.com/guard/listen/wiki/Increasing-the-amount-of-inotify-watchers)

## Tweak Tool

* Power -> When Laptop Lid is Closed -> Don't suspend on lid close -> On
* Typing -> Caps Lock behavior -> Make Caps Lock an additional Ctrl
* Top Bar -> Clock -> Show date

## Fonts

http://worldofgnome.org/how-to-greatly-improve-font-rendering-under-fedora-20
