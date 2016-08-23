#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

cd ~/rpmsample/
mkdir -p testdependency

# Create the "executable".
echo '#!/bin/bash' > testdependency/testdependency
echo 'echo "Hello from testdependency"' >> testdependency/testdependency
chmod +x testdependency/testdependency

# Create the "configuration" file for the executable.
echo '# Testdependency.conf' > testdependency/testdependency.conf

# Create the final folder structure.
mkdir -p testdependency-1.0
mkdir -p testdependency-1.0/usr/bin
mkdir -p testdependency-1.0/etc/testdependency

# Copy the "executable" and the "configuration file", setting correct permissions.
install -m 755 testdependency/testdependency testdependency-1.0/usr/bin/
install -m 644 testdependency/testdependency.conf testdependency-1.0/etc/testdependency/

# Create the source tar.gz for the RPM.
tar -zcvf rpm/SOURCES/testdependency-1.0.tar.gz testdependency-1.0/
