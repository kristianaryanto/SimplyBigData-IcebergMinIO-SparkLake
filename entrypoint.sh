#!/bin/bash


# Start Spark SQL and create the default namespace
echo "Creating default namespace in Spark..."
docker exec -ti spark-iceberg /opt/spark/bin/spark-sql -e "CREATE NAMESPACE IF NOT EXISTS default;"

echo "Starting Spark Thrift Server..."
docker exec -ti spark-iceberg /opt/spark/bin/spark-submit \
    --class org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 \
    --master spark://spark-iceberg:7077 \
    /opt/spark/jars/spark-hive-thriftserver_*.jar
    
echo "Spark Thrift Server ready for serve..."

