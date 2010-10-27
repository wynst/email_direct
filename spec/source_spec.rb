require 'spec_helper'
require 'email_direct/soap'

describe EmailDirect::SOAP, "#source" do

  describe "A live EmailDirect Source actions" do
    before do
      @soap = EmailDirect::SOAP.new(ENV['USERNAME'], ENV['PASSWORD'])
      #uncomment this line for full debug info
      #@soap.debug = true
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

#      puts "find the added item"
      result = @soap.Source_GetAll()
      result.success?.should == true

      source = result.data["Element"].find {|e| e["ElementName"] == element_name}
      source.should_not == nil
      pp source


      puts "we're done with the test, delete the test source"
      result = @soap.Source_Delete("SourceID" => source["ElementID"])
      result.success?.should == true
      result.message.should  == ""
    end
  end

  describe "An invalid authentication error in soap response with Source_GetAll" do
    before do
      @soap = EmailDirect::SOAP.new('invalid', 'password')
      #@soap.debug = true
    end

    it "fails gracefully" do
      result = @soap.Source_GetAll()
      result.success?.should == false
      result.code.should     == 10
      result.message.should  == "Invalid AccountName or Password."
    end
  end

end

