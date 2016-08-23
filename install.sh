#!/bin/bash
# Should be run as root!

set -o errexit
set -o nounset
set -o pipefail

cd $(pwd)/rpm
rpm -iv RPMS/x86_64/testprogram-1.0-1.x86_64.rpm RPMS/x86_64/testdependency-1.0-1.x86_64.rpm 
