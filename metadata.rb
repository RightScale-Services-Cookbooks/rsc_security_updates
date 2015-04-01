name             'rsc_security_updates'
maintainer       'RightScale Inc'
maintainer_email 'premium@rightscale.com'
license          'Apache 2.0'
description      'Installs/Configures rsc_security_updates'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "rsc_security_updates::default", "Enables security updates"
