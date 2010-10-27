require 'spec_helper'
require 'email_direct/soap'

#context "A live emaildirect SOAP consumer"

describe EmailDirect::SOAP, "#source_add" do
  before do
    @soap = EmailDirect::SOAP.new(ENV['USERNAME'], ENV['PASSWORD'])
    @soap.debug = true
  end
  it "interacts with source" do
    #create new source
    element_name = 'RubyTestSource'
    description  = 'a test source item'
    result = @soap.Source_Add("ElementName" => "RubyTestSource", "Description" => 'a test source item')
#    ap result
#    result.code.should == '201'
#    result.description.should == 'blabla'

#    #server should complain since element already exist
#    result = @api.source_add(element_name, description)
#    result.code.should == '201'
#    result.description.should == ''

    #we're done with the test, delete the test source

  end
end

