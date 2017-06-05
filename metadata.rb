name 'chef-centos7-httpd'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures chef-centos7-httpd'
long_description 'Installs/Configures chef-centos7-httpd'
version '0.1.4'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
issues_url 'https://github.com/jasondebolt/chef-centos7-httpd/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
source_url 'https://github.com/jasondebolt/chef-centos7-httpd' if respond_to?(:source_url)

depends 'chef-centos7-common'
