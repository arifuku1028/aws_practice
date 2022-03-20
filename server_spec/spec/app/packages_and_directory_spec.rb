require 'spec_helper'

%w{ git gcc gcc-c++ patch rpm-build mariadb mariadb-devel gdbm-devel zlib-devel openssl-devel ImageMagick-devel readline-devel libcurl-devel libffi-devel libicu-devel libxml2-devel libxslt-devel libyaml-devel}.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe package("nodejs") do
  it { should be_installed }
  it { should be_installed.with_version("16") }
end

describe file("/srv/rails-app") do
  it { should be_directory }
  it { should be_owned_by("ec2-user") }
  it { should be_grouped_into("ec2-user") }
  it { should be_mode 755 }
end

