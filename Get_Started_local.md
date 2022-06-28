# Running PySpark notebooks on your laptop

If you'd like to run Spark on your own laptop there are three options:

1. [Download and install Spark natively](#install-spark-natively)
2. [Use a Docker container](#docker-image)

On Linux-based systems (including MacOS) installation is straightforward.
On Windows, especially if you do not have Java and Python, it is easier to use the provided VM or Docker image.

## Install Spark natively

### Prerequisites

* Java 10 or 11
* Python 3
* Recommended: Anaconda

### Installation

1. Get the latest release from the [Apache Spark downloads page](https://spark.apache.org/downloads.html) and unpack it.
1. That's it - check that it works:
      ```
      cd spark-3.2.1-bin-hadoop3.2/
      bin/pyspark
      ```

      You should see output like this:

      ```
      $ bin/pyspark 
      Python 3.9.7 (default, Sep 16 2021, 08:50:36) 
      [Clang 10.0.0 ] :: Anaconda, Inc. on darwin
      Type "help", "copyright", "credits" or "license" for more information.
      Using Spark's default log4j profile: org/apache/spark/log4j-defaults.properties
      Setting default log level to "WARN".
      To adjust logging level use sc.setLogLevel(newLevel). For SparkR, use setLogLevel(newLevel).
      22/06/24 10:38:29 WARN NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
      Welcome to
      ____              __
     / __/__  ___ _____/ /__
    _\ \/ _ \/ _ `/ __/  '_/
   /__ / .__/\_,_/_/ /_/\_\   version 3.2.1
      /_/

     Using Python version 3.9.7 (default, Sep 16 2021 08:50:36)
     Spark context Web UI available at http://192.168.68.109:4040
     Spark context available as 'sc' (master = local[*], app id = local-1656063509672).
     SparkSession available as 'spark'
      >>> 
      ```

### Examples and lab exercises

1. Clone the git repository on your laptop:
      ```
      git clone https://github.com/rosafilgueira/Seminar_MUIA.git
      ```

2. We're setting up an environment variable for the Spark installation directory
(replace **[INSTALLATION_PATH]** below with the path of your installation):
      ```
      export SPARK_HOME=[INSTALLATION_PATH]/spark-3.2.1-bin-hadoop3.2
      ```
      You can also add PySpark (and other Spark binaries) to your path if you prefer:
      ```
      export PATH=$PATH:$SPARK_HOME/bin
      ```
3. Enter in the directory Seminar_MUIA, and configure (see bellow) pyspark to use Jupyter notebook server:
      ```
      cd Seminar_MUIA
      PYSPARK_DRIVER_PYTHON=jupyter PYSPARK_DRIVER_PYTHON_OPTS="notebook" pyspark
      ```

## Docker image

### Prerequisites

* Docker

### Installation

1. Clone the git repository on your laptop:
      ```
      git clone https://github.com/rosafilgueira/Seminar_MUIA.git
      ```
1. Change into the docker directory within the cloned repository and follow the [instructions](docker/) to build and run the Dockerfile.
      ```
      cd Seminar_MUIA/docker
      docker build -t muia_spark_course .
      ./start_docker.sh
      ```

### Examples and lab exercises

A copy of the git repository is available in the Docker container.

The command above starts a bash terminal session in the Docker container. You can now start Jupyter:

```
cd Seminar_MUIA/docker
./pyspark_jupyter.sh
```

and access it from a browser (on the host machine i.e. your laptop) here: http://localhost:8000/
