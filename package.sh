#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

cd ~/rpmsample/rpm
rpmbuild -ba SPECS/testdependency.spec
rpmbuild -ba SPECS/testprogram.spec
