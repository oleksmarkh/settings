### disables bluetooth

#### Ubuntu

add the following string to the `/etc/rc.local` file, before the `exit 0` line:

`rfkill block bluetooth`

then run:

```bash
gsettings set com.canonical.indicator.bluetooth visible false
```

#### Fedora

```bash
sudo yum install rfkill
```

add the following lines to the `/etc/rc.d/rc.local` file (create it and `chmod +x` if not exist):

```bash
#!/bin/sh
rfkill block bluetooth
exit 0
```
