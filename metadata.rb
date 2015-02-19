name             'xml'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache 2.0'
description      'Installs xml'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.2.13'

depends 'build-essential'
depends 'chef-sugar'

supports 'amazon'
supports 'arch'
supports 'centos'
supports 'debian'
supports 'fedora'
supports 'freebsd'
supports 'redhat'
supports 'scientific'
supports 'suse'
supports 'ubuntu'

recipe 'xml', 'Installs libxml development packages'
