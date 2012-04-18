#
# Cookbook Name:: liferay
# Attributes:: default
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

default['liferay']['user'] = "liferay"
# each hash is name + url
default['liferay']['war_url'] =  'http://downloads.sourceforge.net/project/lportal/Liferay%20Portal/6.1.0%20GA1/liferay-portal-6.1.0-ce-ga1-20120106155615760.war?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Flportal%2Ffiles%2FLiferay%2520Portal%2F6.1.0%2520GA1%2F&ts=1329474724&use_mirror=freefr'
default['liferay']['war_checksum'] = 'de5e2b65983b27c322b196ef975582d42746d670c0ca40e00c1e5369eb3a6972'
default['liferay']['dependencies_url'] =  'http://downloads.sourceforge.net/project/lportal/Liferay%20Portal/6.1.0%20GA1/liferay-portal-dependencies-6.1.0-ce-ga1-20120106155615760.zip?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Flportal%2Ffiles%2FLiferay%2520Portal%2F6.1.0%2520GA1%2F&ts=1329474759&use_mirror=netcologne'
default['liferay']['dependencies_checksum'] = 'd98e27627ae7689f254e1e3c7f3e92fcc4f3fb2537aa071a30f44311d24c49e7'

default['liferay']['client_dependencies_url'] = "http://downloads.sourceforge.net/project/lportal/Liferay%20Portal/6.1.0%20GA1/liferay-portal-client-6.1.0-ce-ga1-20120106155615760.zip?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Flportal%2Ffiles%2FLiferay%2520Portal%2F6.1.0%2520GA1%2F&ts=1329490764&use_mirror=ignum"
default['liferay']['client_dependencies_checksum'] = 'd6b7f7801b02dafad318f2fb9a92cb9a7f0fe000f47590cc74d1c28cc17802f6'

default['liferay']['extra_jars'] = {
  "jta.jar" => "http://download.java.net/maven/2/javax/transaction/jta/1.0.1B/jta-1.0.1B.jar",
  "persistence.jar" => "http://search.maven.org/remotecontent?filepath=org/pojava/persistence/2.8.0/persistence-2.8.0.jar",
  "jms.jar" => "http://search.maven.org/remotecontent?filepath=com/sun/messaging/mq/jms/4.4/jms-4.4.jar",
  "mysql.jar" => ""
}


