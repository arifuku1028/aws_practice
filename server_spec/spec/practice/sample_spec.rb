require 'spec_helper'

%w{git gcc gcc-c++ patch rpm-build mariadb mariadb-devel gdbm-devel zlib-devel openssl-devel ruby-devel rubygems-devel ImageMagick-devel readline-devel libcurl-devel libffi-devel libicu-devel libxml2-devel libxslt-devel libyaml-devel}.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe package("nodejs") do
  it { should be_installed }
  it { should be_installed.with_version("16") }
end

describe package("nginx"), :if => os[:family] == "amazon" do
  it { should be_installed }
end

describe file("/etc/nginx/conf.d/rails.conf") do
  it { should exist }
end

describe service("nginx"), :if => os[:family] == "amazon" do
  it { should be_enabled }
  it { should be_running }
end

describe file("/srv/rails-app") do
  it { should be_directory }
  it { should be_owned_by("ec2-user") }
  it { should be_grouped_into("ec2-user") }
  it { should be_mode 755 }
end

describe port(80) do
  it { should be_listening }
end

describe port(22) do
  it { should be_listening }
end

describe command('curl practice-elb-766147491.ap-northeast-1.elb.amazonaws.com -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end