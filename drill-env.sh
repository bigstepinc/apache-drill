
DRILL_MAX_DIRECT_MEMORY=${DRILL_MAX_DIRECT_MEMORY:="8G"}
DRILL_HEAP=${DRILL_HEAP:="4G"}

echo DRILL_MAX_DIRECT_MEMORY set to $DRILL_MAX_DIRECT_MEMORY
echo DRILL_HEAP set to $DRILL_HEAP
echo DRILL_CLUSTER set to $DRILL_CLUSTER
echo ZOOKEEPER set to $ZOOKEEPER


export DRILL_JAVA_OPTS="-Xms$DRILL_HEAP -Xmx$DRILL_HEAP -XX:MaxDirectMemorySize=$DRILL_MAX_DIRECT_MEMORY -XX:MaxPermSize=512M -XX:ReservedCodeCacheSize=1G -Ddrill.exec.enable-epoll=true"

# Class unloading is disabled by default in Java 7
# http://hg.openjdk.java.net/jdk7u/jdk7u60/hotspot/file/tip/src/share/vm/runtime/globals.hpp#l1622
export SERVER_GC_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseG1GC "


echo "drill.exec:{ cluster-id: \"$DRILL_CLUSTER\", zk.connect: \"$ZOOKEEPER\"}" > /opt/drill/apache-drill-1.4.0/conf/drill-override.conf
