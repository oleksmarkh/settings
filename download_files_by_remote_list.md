## downloads files specified by list ##

assuming that filelist is acessible via $url:
<code>wget -i $url --trust-server-names=on --restrict-file-names=nocontrol</code>