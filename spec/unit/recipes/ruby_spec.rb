require 'spec_helper'

describe 'xml::ruby' do
  let(:chef_run) { ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04').converge(described_recipe) }

  it 'defaults the build-essential recipe to run at compile time' do
    expect(chef_run.node['build-essential']['compile_time']).to eq(true)
  end

  it 'defaults the xml recipe to run at compile time' do
    expect(chef_run.node['xml']['compiletime']).to eq(true)
  end

  it 'includes the build-essential recipe' do
    expect(chef_run).to include_recipe 'build-essential::default'
  end

  it 'includes the xml recipe' do
    expect(chef_run).to include_recipe 'xml::default'
  end

  it 'defaults the NOKOGIRI_USE_SYSTEM_LIBRARIES env variable' do
    chef_run
    expect(ENV['NOKOGIRI_USE_SYSTEM_LIBRARIES']).to eq('true')
  end

  it 'installs nokogiri' do
    expect(chef_run).to install_chef_gem('nokogiri')
  end
end
