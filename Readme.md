=== Docker image for Apache Drill in Distributed Mode ===

The following environment variables can be modified and have the following default values:

ENV DRILL_LOG_DIR=/var/log/drill
ENV DRILLBIT_LOG_PATH=/var/log/drill/drillbit.log
ENV DRILLBIT_QUERY_LOG_PATH=/var/log/drill/drill-query.log
ENV DRILL_MAX_DIRECT_MEMORY=8G
ENV DRILL_HEAP=4G  
ENV DRILL_CLUSTER=drillbit1


The only compulsory variable is ZOOKEEPER which must be set to the hostname:port

The default entrypoint is /opt/drill/apache-drill-1.1.0/bin/runbit 

