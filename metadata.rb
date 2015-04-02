name             'rsc_security_updates'
maintainer       'RightScale Inc'
maintainer_email 'premium@rightscale.com'
license          'Apache 2.0'
description      'Installs/Configures rsc_security_updates'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports "ubuntu"

depends 'marker', '~> 1.0.1'

recipe "rsc_security_updates::default", "Enable security updates"
recipe "rsc_security_updates::install", "Enable daily security updates"

attribute "rsc_security_updates/security_updates",
  :description => "Enable Security Updates",
  :recipes     => ["rsc_security_updates::default"],
  :type        => "string",
  :display     => "rsc_security_updates/security_updates",
  :choice      => ["enable", "disable"],
  :required    => "required"

attribute "rsc_security_updates/apply_security_updates",
  :description => "Automatically download and install new security updates?",
  :recipes     => ["rsc_security_updates::install"],
  :type        => "string",
  :display     => "rsc_security_updates/apply_security_updates",
  :choice      => ["yes", "no"],
  :required    => "required"
