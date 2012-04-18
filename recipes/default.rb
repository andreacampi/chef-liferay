#
# Cookbook Name:: liferay
# Recipe:: default
# Author:: Bryan W. Berry (<bryan.berry@gmail.com>)
#
# Copyright 2012, Bryan W. Berry
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

liferay_user = node['liferay']['user']

user liferay_user do
  action :create
  supports :manage_home => true
end

application "liferay" do
  path "/usr/local/www/webapps"
  repository node['liferay']['war_url']
  revision node['liferay']['war_checksum']
  owner liferay_user
  group "www"

  java_webapp do
    ark_packages({
      "portlet.jar" => {
        :url => node['liferay']['dependencies_url'],
        :checksum => node['liferay']['dependencies_checksum']
      },
      "wsdl4j.jar" => {
        :url => node['liferay']['client_dependencies_url'],
        :checksum => node['liferay']['client_dependencies_checksum']
      }
    })
    maven_packages({
      "javax.persistence" => {
        :group_id => "org.eclipse.persistence", :version => "2.0.0"
      },
      "jta" => {
        :group_id => "javax.transaction", :version => "1.1"
      },
      "jms" => {
        :group_id => "com.sun.messaging.mq", :version => "4.4"
      },
      "postgresql" => {
        :group_id => "postgresql", :version => "9.0-801.jdbc4"
      }
    })
  end

  tomcat
end
