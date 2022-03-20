require 'spec_helper'

describe package("nginx"), :if => os[:family] == "amazon" do
  it { should be_installed }
end

describe service("nginx"), :if => os[:family] == "amazon" do
  it { should be_enabled }
  it { should be_running }
end

describe file("/etc/nginx/conf.d/rails.conf") do
  it { should exist }
end
