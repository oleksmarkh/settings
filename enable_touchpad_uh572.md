### enables touchpad on fujitsu-lifebook-uh572 ###

see https://lifebook.ts.fujitsu.com/blog/blog/category/general/ubuntu-12-10-quantal-quetzal-on-fujitsu-lifebook-uh572/s

1. open the "/etc/default/grub" file
2. find the line containing: GRUB_CMDLINE_LINUX
3. add "i8042.notimeout i8042.nomux" to the string in quotes
4. save and exit
5. run "sudo update-grub"
6. reboot
