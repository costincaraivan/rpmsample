# Don't try fancy stuff like debuginfo, which is useless on binary-only
# packages. Don't strip binary too
# Be sure buildpolicy set to do nothing
%define        __spec_install_post %{nil}
%define          debug_package %{nil}
%define        __os_install_post %{_dbpath}/brp-compress

Summary: A test rpm package
Name: testprogram
Version: 1.0
Release: 1
License: MIT
Group: Development/Tools
SOURCE0 : %{name}-%{version}.tar.gz
URL: http://blog.oblio360.com/

BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-root

Requires: testdependency

%description
%{summary}

%prep
%setup -q

%build
# Empty section.

%clean
rm -rf %{buildroot}

%pre
echo 'Hello from the pre-install script.'

%install
rm -rf %{buildroot}
mkdir -p  %{buildroot}

# in builddir
cp -a * %{buildroot}

%post
echo 'Hello from the post-install script.'

%preun
echo 'Hello from the preun-install script'

%postun
echo 'Hello from the postun-install script'


%files
%defattr(-,root,root,-)
%config(noreplace) %{_sysconfdir}/%{name}/%{name}.conf
%{_bindir}/*

%changelog
* Mon Aug 23 2016 Oblio Point <oblio@oblio360.com> 1.0-1
- First Build

