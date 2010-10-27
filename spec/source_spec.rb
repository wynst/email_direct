require 'spec_helper'
require 'email_direct/soap'

#context "A live emaildirect SOAP consumer"

describe EmailDirect::SOAP, "#source" do
  before do
    @soap = EmailDirect::SOAP.new(ENV['USERNAME'], ENV['PASSWORD'])
    @soap.debug = true
  end
  it "interacts with source" do
    puts "Element should already exists.."
    element_name = 'RubyTestSource'
    description  = 'a test source item'
    result = @soap.Source_Add("ElementName" => element_name, "Description" => element_name)
    result.success?.should == false
    result.code.should     == 402
    result.message.should  == "A Source with this name already exists."

    puts "creating new source.."
    element_name = 'RubyTestSource2'
    description  = 'a test source item'
    result = @soap.Source_Add("ElementName" => element_name, "Description" => element_name)
    result.success?.should == true

    puts "find the added item"
    result = @soap.Source_GetAll()
    result.success?.should == true

    source = result.data["Element"].find {|e| e["ElementName"] == element_name}
    source.should_not == nil

    puts "we're done with the test, delete the test source"
    result = @soap.Source_Delete("SourceID" => source["ElementID"])
    result.success?.should == true

  end
end

