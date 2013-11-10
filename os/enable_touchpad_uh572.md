### enables touchpad on fujitsu-lifebook-uh572

https://lifebook.ts.fujitsu.com/blog/blog/category/general/ubuntu-12-10-quantal-quetzal-on-fujitsu-lifebook-uh572/s
https://ask.fedoraproject.org/question/28521/touchpad-lengda-on-fedora-19/

1. open the `/etc/default/grub` file
2. find the line containing: `GRUB_CMDLINE_LINUX`
3. add `i8042.notimeout i8042.nomux` to the string in quotes
4. save and exit
5. on ubuntu: `sudo update-grub`; on fedora: `sudo grub2-mkconfig -o /boot/grub2/grub.cfg`
6. reboot
