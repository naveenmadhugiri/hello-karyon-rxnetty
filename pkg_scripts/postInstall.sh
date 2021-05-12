#!/bin/bash

# create log folder
install  --mode=755 --directory  /var/log/hello-karyon-rxnetty

# start services
systemctl start hello-karyon-rxnetty


