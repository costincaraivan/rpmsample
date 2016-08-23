#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

mkdir -p testprogram

# Create the "executable".
echo '#!/bin/bash' > testprogram/testprogram
echo 'echo "Hello from testprogram"' >> testprogram/testprogram
chmod +x testprogram/testprogram

# Create the "configuration" file for the executable.
echo '# testprogram.conf' > testprogram/testprogram.conf

# Create the final folder structure.
mkdir -p testprogram-1.0
mkdir -p testprogram-1.0/usr/bin
mkdir -p testprogram-1.0/etc/testprogram

# Copy the "executable" and the "configuration file", setting correct permissions.
install -m 755 testprogram/testprogram testprogram-1.0/usr/bin/
install -m 644 testprogram/testprogram.conf testprogram-1.0/etc/testprogram/

# Create the source tar.gz for the RPM.
tar -zcvf rpm/SOURCES/testprogram-1.0.tar.gz testprogram-1.0/
