## enables a java plugin for chrome and firefox ##

assuming that an archive is extracted at "~/jre1.7.0_07":
<code>
JAVA_HOME=~/jre1.7.0_07
MOZILLA_HOME=~/.mozilla
mkdir $MOZILLA_HOME/plugins
ln -s $JAVA_HOME/lib/amd64/libnpjp2.so $MOZILLA_HOME/plugins
</code>