You might need to do the following steps:

#We're setting up an environment variable for the Spark installation directoYou might need to do the following steps:
#(replace **[INSTALLATION_PATH]** below with the path of your installation):
#export SPARK_HOME=[INSTALLATION_PATH]/spark-3.2.1-bin-hadoop3.2
#export PATH=$PATH:$SPARK_HOME/bin

PYSPARK_DRIVER_PYTHON=jupyter PYSPARK_DRIVER_PYTHON_OPTS="notebook" pyspark
