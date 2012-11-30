case node['platform_family']
when "rhel", "fedora"
  default['xml']['packages'] = %w{ libxml2-devel libxslt-devel }
when "ubuntu","debian"
  default['xml']['packages'] = %w{ libxml2-dev libxslt-dev }
when "freebsd"
  default['xml']['packages'] = %w{ libxml2 libxslt }
end
