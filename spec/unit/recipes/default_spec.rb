require 'spec_helper'

describe 'xml::default' do
  context 'fedora' do
    let(:chef_run) { ChefSpec::ServerRunner.new(platform: 'fedora', version: '24').converge(described_recipe) }

    it 'installs the XML packages during the converge phase' do
      expect(chef_run).to install_package(['libxml2-devel', 'libxslt-devel', 'zlib-devel']).at_converge_time
    end
  end

  context 'rhel' do
    let(:chef_run) { ChefSpec::ServerRunner.new(platform: 'centos', version: '6.8').converge(described_recipe) }

    it 'installs the XML packages during the converge phase' do
      expect(chef_run).to install_package(['libxml2-devel', 'libxslt-devel', 'zlib-devel']).at_converge_time
    end
  end

  context 'suse' do
    let(:chef_run) { ChefSpec::ServerRunner.new(platform: 'opensuse', version: '13.2').converge(described_recipe) }

    it 'installs the XML packages during the converge phase' do
      expect(chef_run).to install_package(['libxml2-devel', 'libxslt-devel', 'zlib-devel']).at_converge_time
    end
  end

  context 'ubuntu' do
    let(:chef_run) { ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe) }

    it 'installs the XML packages during the converge phase' do
      expect(chef_run).to install_package(['libxml2-dev', 'libxslt-dev', 'zlib1g-dev']).at_converge_time
    end
  end

  context 'debian' do
    let(:chef_run) { ChefSpec::ServerRunner.new(platform: 'debian', version: '8.6').converge(described_recipe) }

    it 'installs the XML packages during the converge phase' do
      expect(chef_run).to install_package(['libxml2-dev', 'libxslt-dev', 'zlib1g-dev']).at_converge_time
    end
  end

  context 'mac_os_x' do
    let(:chef_run) { ChefSpec::ServerRunner.new(platform: 'mac_os_x', version: '10.12').converge(described_recipe) }

    it 'installs the XML packages during the converge phase' do
      expect(chef_run).to install_package(['libxml2']).at_converge_time
    end
  end

  context 'freebsd' do
    let(:chef_run) { ChefSpec::ServerRunner.new(platform: 'freebsd', version: '10.3').converge(described_recipe) }

    it 'installs the XML packages during the converge phase' do
      expect(chef_run).to install_package(%w(libxml2 libxslt)).at_converge_time
    end
  end

  context 'windows' do
    let(:chef_run) { ChefSpec::ServerRunner.new(platform: 'windows', version: '2012R2').converge(described_recipe) }

    it "doesn't install any xml packages during the compile phase" do
      expect(chef_run).not_to install_package(['libxml2-dev']).at_converge_time
    end
  end
end
