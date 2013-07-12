### disables bluetooth on Ubuntu ###

add the following string to the "/etc/rc.local" file, before the "exit 0" line:

<code>rfkill block bluetooth</code>

then run:

<code>gsettings set com.canonical.indicator.bluetooth visible false</code>
