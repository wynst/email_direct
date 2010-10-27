require 'email_direct'

username = 'username'
password = 'password'

@soap = EmailDirect::SOAP.new(username, password)
#uncomment this line for full debug info
#@soap.debug = true

puts "creating new source.."

element_name = 'RubyTestSource2'
description  = 'a test source item'

result = @soap.Source_Add("ElementName" => element_name, "Description" => element_name)
puts result.message

result = @soap.Source_GetAll()

source = result.data["Element"].find {|e| e["ElementName"] == element_name}
pp source


puts "we're done with the test, delete the test source"
result = @soap.Source_Delete("SourceID" => source["ElementID"])

