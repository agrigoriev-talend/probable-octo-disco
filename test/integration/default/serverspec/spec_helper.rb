require 'serverspec'

set :backend, :exec

RSpec.configure do |c|
  c.before :all do
    c.path = '/sbin:/usr/sbin:/opt:$PATH'
  end
  c.color = true
  c.tty = true
  c.output_stream = File.open('serverspec-result.html', 'w')
  c.formatter = :html
end
