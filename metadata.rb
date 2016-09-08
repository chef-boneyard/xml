name             'xml'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache 2.0'
description      'Installs xml'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.0.0'

depends 'build-essential'

%w(amazon arch centos debian fedora freebsd oracle redhat scientific suse ubuntu).each do |os|
  supports os
end

recipe 'xml', 'Installs libxml development packages'

source_url 'https://github.com/chef-cookbooks/xml'
issues_url 'https://github.com/chef-cookbooks/xml/issues'

chef_version '>= 12.1'
