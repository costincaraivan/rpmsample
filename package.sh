#!/bin/bash

cd ~/rpmsample/rpm
rpmbuild -ba SPECS/testdependency.spec
rpmbuild -ba SPECS/testprogram.spec
