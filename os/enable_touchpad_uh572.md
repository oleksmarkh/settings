### enables touchpad on fujitsu-lifebook-uh572

http://cloud-engineering.forthscale.com/2014/03/fixing-fujitsu-lifebook-uh572-touchpad.html

1. edit `/etc/default/grub`: add `i8042.notimeout i8042.nomux` to the string in quotes against `GRUB_CMDLINE_LINUX`
2. on ubuntu: `sudo update-grub`; on fedora: `sudo grub2-mkconfig -o /boot/grub2/grub.cfg`
3. reboot
