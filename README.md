# rsc_security_updates cookbook

# Requirements

[marker](https://github.com/rightscale-cookbooks/marker) v1.0.1

# Usage

* This cookbook will allow security updates from upstream and
also automatically installed if specified. Instructions for Ubuntu [here](https://help.ubuntu.com/12.04/serverguide/automatic-updates.html).

# Attributes
* "rsc_security_updates/security_updates"
	* Enable repos to check for available updates?
* "rsc_security_updates/apply_security_updates"
	* Automatically download and install new security updates?

# Recipes

* rsc_security_updates::default", "Enable security updates"
* recipe "rsc_security_updates::install", "Enable daily security updates"

# Author

Author:: RightScale Inc (<premium@rightscale.com>)
