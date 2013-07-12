### enables a java plugin for chrome and firefox ###

assuming that an archive is extracted at "~/jre1.7.0_07":

<code>JAVA_HOME=~/jre1.7.0_07</code>
<code>MOZILLA_HOME=~/.mozilla</code>
<code>mkdir $MOZILLA_HOME/plugins</code>
<code>ln -s $JAVA_HOME/lib/amd64/libnpjp2.so $MOZILLA_HOME/plugins</code>
