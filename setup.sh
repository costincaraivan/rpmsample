#!/bin/bash

mkdir -p ~/rpmsample/rpm/{RPMS,SRPMS,BUILD,SOURCES,SPECS,tmp}

cat <<EOF >~/.rpmmacros
%_topdir   %(echo $HOME)/rpmsample/rpm
%_tmppath  %{_topdir}/tmp
EOF

cd ~/rpmsample

./testdependency.sh
./testprogram.sh
