# rpmsample
Sample RPM packages.

The rpm/SPECS folder contains two minimal specs for some toy/test packages:

* testdependency
* testprogram (requires testdependency)

Run
`./setup.sh`
to create the source tar.gzs needed to create packages.

This step requires rpmbuild. Install it with:
`sudo yum install rpm-build`

Run
`./package.sh`
to create the two rpms from the tar.gz files.

Run
`sudo ./install.sh`
 to install the two newly created rpms.
