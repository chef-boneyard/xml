#
# Cookbook Name:: xml
# Recipe:: ruby
#
# Author:: Joseph Holsten (<joseph@josephholsten.com>)
#
# Copyright 2008-2015, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'chef-sugar'

node.default['apt']['compile_time_update'] = true
node.default['build-essential']['compile_time'] = true
node.default['xml']['compiletime'] = true

if 'debian' == node['platform_family']
  include_recipe 'apt'
end

include_recipe 'build-essential::default'
include_recipe 'xml::default'

if node['xml']['nokogiri']['use_system_libraries']
  ENV['NOKOGIRI_USE_SYSTEM_LIBRARIES'] = node['xml']['nokogiri']['use_system_libraries'].to_s
end

chef_gem 'nokogiri' do
  version node['xml']['nokogiri']['version'] if node['xml']['nokogiri']['version']
  action :install
  compile_time true if defined? compile_time
end
