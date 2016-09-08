require 'spec_helper'

describe 'xml::default' do
  let(:chef_run) { ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '14.04').converge(described_recipe) }

  it 'installs the XML packages during the converge phase' do
    expect(chef_run).to install_package(['libxml2-dev', 'libxslt-dev', 'zlib1g-dev']).at_converge_time
  end
end
