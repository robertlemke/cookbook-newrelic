#
# Cookbook Name:: robertlemke-newrelic
# Recipe:: default
# Author:: Robert Lemke <rl@robertlemke.com>
#
# Copyright (c) 2013 Robert Lemke
#
# Licensed under the MIT License (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://opensource.org/licenses/MIT
#

execute "robertlemke-newrelic: import apt key to keyring" do
  command "apt-key adv --recv-keys 548C16BF --keyserver hkp://subkeys.pgp.net && apt-get update"
  not_if "gpg --keyring /etc/apt/trusted.gpg --list-keys | grep '1024D/548C16BF'"
end

execute "robertlemke-newrelic: install apt source" do
  command "wget -O /etc/apt/sources.list.d/newrelic.list http://download.newrelic.com/debian/newrelic.list"
  not_if { File.exist?('/etc/apt/sources.list.d/newrelic.list') }
end

package "newrelic-sysmond" do
  action :install
end

package "newrelic-php5" do
  action :install
end

service "newrelic-sysmond" do
  action :nothing
end

template "/etc/newrelic/nrsysmond.cfg" do
  source "nrsysmond.cfg.erb"
  owner 'root'
  group 'newrelic'
  mode '0640'
  notifies :restart, resources(:service => "newrelic-sysmond")
end