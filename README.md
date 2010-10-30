# Email Direct API

Ruby wrapper for [emaildirect.com](http://emaildirect.com) SOAP service

To use this gem, initialize with your account name and password.  All the SOAP calls (found here: http://dev.emaildirect.com/v1/) are functions of the module with the same function name and parameters (minus the credentials).  This gem depends on the serviceproxy and activesupport gems.

## Installation

    gem install email_direct

## Usage

    require 'email_direct'

    username = 'username'
    password = 'password'

    @soap = EmailDirect::SOAP.new(username, password)
    #uncomment this line for full debug info
    #@soap.debug = true

    element_name = 'RubyTestSource2'
    description  = 'a test source item'

    result = @soap.Source_Add("ElementName" => element_name, "Description" => element_name)
    puts "Error Adding source " unless result.success?

    result = @soap.Source_GetAll()
    source = result.data["Element"].find {|e| e["ElementName"] == element_name}
    pp source

    puts "we're done with the test, delete the test source"
    result = @soap.Source_Delete("SourceID" => source["ElementID"])

## TODO

More specs

