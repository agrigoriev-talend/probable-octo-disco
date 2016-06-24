require 'spec_helper'

describe file('/tmp/somefile') do
  it { should exist }
end
