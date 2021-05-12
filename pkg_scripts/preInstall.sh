#!/bin/bash

/usr/bin/update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-11-openjdk-amd64/bin/java 1
/usr/bin/update-alternatives --set java /usr/lib/jvm/java-11-openjdk-amd64/bin/java

# check for Java installation
if type java; then
  echo $(java -version 2>&1 | awk -F '"' '/version/ {print $2}')
 else
    echo "Java not found"
    exit 1
fi
