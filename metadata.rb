maintainer       "Bryan W. Berry"
maintainer_email "bryan.berry@gmail.com"
license          "Apache 2.0"
description      "Installs/Configures liferay portal"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.11.4"

%w{ application application_java ark maven }.each do |cb|
  depends cb
end

%w{ debian ubuntu centos redhat fedora }.each do |os|
  supports os
end

recipe "liferay::default", "Installs and configures Liferay"
