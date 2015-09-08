name             'xml'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache 2.0'
description      'Installs xml'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.2.13'

depends 'build-essential'
depends 'chef-sugar'

%w(amazon arch centos fedora freebsd oracle redhat scientific suse ubuntu).each do |os|
  supports os
end

recipe 'xml', 'Installs libxml development packages'

source_url 'https://github.com/chef-cookbooks/xml' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/xml/issues' if respond_to?(:issues_url)
