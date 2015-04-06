# rsc_security_updates cookbook

# Requirements

[marker](https://github.com/rightscale-cookbooks/marker) v1.0.1

# Usage

# Attributes
* "rsc_security_updates/security_updates"
	* Enable repos to check for available updates?
* "rsc_security_updates/apply_security_updates"
	* "Automatically download and install new security updates?"

# Recipes

* rsc_security_updates::default", "Enable security updates"
* recipe "rsc_security_updates::install", "Enable daily security updates"

# Author

Author:: RightScale Inc (<premium@rightscale.com>)
