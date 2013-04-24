require 'rubygems'
require 'blather/client'

setup ENV['JID'], ENV['JPASSWORD']

subscription :request? do |s|
	write_to_stream s.approve!
end

message :chat?, :body do |m|
	say m.from, "You said: #{m.body}"
end
