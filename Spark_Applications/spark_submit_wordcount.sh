#!/bin/bash
set -x 
spark-submit wordcount.py ../README.md
