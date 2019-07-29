Name:           example-of-install-reinforce
Version:        1.0.0  
Release:        1%{?dist}  
Summary:        helloworld  
  
  
Group:          Development/Tools  
License:        GPL  
#URL:              
Source0:        %{name}-%{version}.tar.gz  
  
  
#BuildRequires:    
#Requires:         
  
  
%description  
  
  
  
  
%prep  
%setup -q  
  
  
%build  
echo heheeheh 
  
%install  
mkdir -p $RPM_BUILD_ROOT/tmp/
cp -rp %_topdir/BUILD/%{name}-%{version}/install.sh  $RPM_BUILD_ROOT/tmp/
  
%post
bash /tmp/install.sh
  
  
%clean  
rm -rf $RPM_BUILD_ROOT  
  
  
  
  
%files  
%defattr(-,root,root,-)  
%doc  
/tmp/install.sh  
  
  
%changelog
