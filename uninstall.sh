#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

# Should be run as root!

rpm -ev testprogram testdependency
