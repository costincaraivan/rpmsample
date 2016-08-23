#!/bin/bash

# Should be run as root!

cd $(pwd)/rpm
rpm -iv RPMS/x86_64/testprogram-1.0-1.x86_64.rpm RPMS/x86_64/testdependency-1.0-1.x86_64.rpm 
