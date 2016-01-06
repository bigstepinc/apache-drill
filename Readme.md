## Docker image for Apache Drill 1.4 in Distributed Mode ##
Maintainer **Bigstep Cloud Ltd.** Alex Bordei

The following environment variables can be modified and have the following default values:
```
DRILL_LOG_DIR=/var/log/drill
DRILLBIT_LOG_PATH=/var/log/drill/drillbit.log
DRILLBIT_QUERY_LOG_PATH=/var/log/drill/drill-query.log
DRILL_MAX_DIRECT_MEMORY=8G
DRILL_HEAP=4G  
DRILL_CLUSTER=drillbit1
```
The only **compulsory** variable is **ZOOKEEPER** which must be set to the *hostname:port*

The default entrypoint is /opt/drill/apache-drill-1.4.0/bin/runbit 

