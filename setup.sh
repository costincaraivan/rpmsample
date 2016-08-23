#!/bin/bash

mkdir -p ~/rpmbuild/{RPMS,SRPMS,BUILD,SOURCES,SPECS,tmp}

cat <<EOF >~/.rpmmacros
%_topdir   %(echo $HOME)/rpmbuild/rpm
%_tmppath  %{_topdir}/tmp
EOF

cd ~/rpmbuild

./testdependency.sh
./testprogram.sh
