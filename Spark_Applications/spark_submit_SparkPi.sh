#!/bin/bash


SPARK_HOME="/opt/homebrew/Cellar/apache-spark/3.2.1/libexec/"
EXAMPLES="examples/jars/spark-examples_2.12-3.2.1.jar"

spark-submit --verbose --class org.apache.spark.examples.SparkPi \
             --master local[*] --deploy-mode client\
              $SPARK_HOME$EXAMPLES  500
