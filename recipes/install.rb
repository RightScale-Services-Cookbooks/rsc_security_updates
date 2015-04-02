#
# Cookbook Name:: rsc_security_updates
#
# Copyright RightScale, Inc. All rights reserved.
# All access and use subject to the RightScale Terms of Service available at
# http://www.rightscale.com/terms.php and, if applicable, other agreements
# such as a RightScale Master Subscription Agreement.

marker 'recipe_start_rightscale' do
  template 'rightscale_audit_entry.erb'
end

# Enable automatic security updates as described here:
# http://askubuntu.com/questions/325998/how-to-enable-auto-security-update-in-ubuntu-12-04-server

if node[:rsc_security_updates][:apply_security_updates] == "yes"
  case node[:platform]
  when "ubuntu"
    package "unattended-upgrades" do
      action :install
    end

    cookbook_file "/etc/apt/apt.conf.d/10periodic" do
      source "10periodic"
      owner "root"
      group "root"
      mode 0644
    end
  end
end
