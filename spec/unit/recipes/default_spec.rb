#
# Cookbook Name:: chef-centos7-httpd
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'chef-centos7-httpd::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.2.1511')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs the correct package' do
      expect(chef_run).to install_package('httpd')
    end

    it 'creates a default html file' do
      expect(chef_run).to create_template('/var/www/html/index.html')
    end

    it 'starts the service' do
      expect(chef_run).to start_service('httpd')
    end

    it 'enables the service' do
      expect(chef_run).to enable_service('httpd')
    end

    it 'creates the web_admin user' do
      expect(chef_run).to create_user('web_admin').with(system: true)
    end

    it 'creates the web_group group' do
      expect(chef_run).to create_group('web_admin')
    end

  end
end
