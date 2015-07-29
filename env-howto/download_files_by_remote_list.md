### downloads files specified by list

assuming that filelist is accessible via $url:

```bash
wget -i $url --trust-server-names=on --restrict-file-names=nocontrol
```
