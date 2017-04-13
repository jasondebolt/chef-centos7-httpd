# # encoding: utf-8

# Inspec test for recipe chef-centos7-httpd::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe package 'httpd' do
  it { should be_installed}
end

describe service 'httpd' do
  it { should be_enabled }
  it { should be_running }
end

describe command 'wget -qSO- --spider localhost' do
  its('stderr') { should match %r{HTTP/1\.1 200 OK} }
end

describe port(80) do
  it { should be_listening }
end
