require 'spec_helper'

describe port(80) do
  it { should be_listening }
end

describe port(22) do
  it { should be_listening }
end

describe command('curl practice-elb-884924591.ap-northeast-1.elb.amazonaws.com -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end
