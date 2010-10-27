require 'spec_helper'
require 'email_direct'

describe EmailDirect::Response, "#initialize" do

  describe "A valid response from Source_Add" do
    before do
      xml   = "<?xml version=\"1.0\" encoding=\"utf-8\"?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\"><soap:Body><Source_AddResponse xmlns=\"http://espapi.net/v1/\"><Source_AddResult xmlns=\"http://espapi.net/v1/components/apiresult\"><Code>10</Code><Message>Invalid AccountName or Password.</Message></Source_AddResult></Source_AddResponse></soap:Body></soap:Envelope>"
      @response = EmailDirect::Response.new(xml)
    end
    it "parse correctly" do
      @response.success?.should == false
      @response.code.should     == 10
      @response.message.should  == "Invalid AccountName or Password."
    end
  end

  describe "A valid element List with Source_GetAll" do
    before do
      xml =<<XML
  <?xml version="1.0" encoding="utf-8"?>
  <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
    <soap:Body>
      <Source_GetAllResponse xmlns="http://espapi.net/v1/">
        <Source_GetAllResult>
          <Element>
            <ElementID>1</ElementID>
            <ElementName>string</ElementName>
            <Description>string</Description>
          </Element>
          <Element>
            <ElementID>2</ElementID>
            <ElementName>string</ElementName>
            <Description>string</Description>
          </Element>
        </Source_GetAllResult>
      </Source_GetAllResponse>
    </soap:Body>
  </soap:Envelope>
XML
      @response = EmailDirect::Response.new(xml)
    end

    it "parse correctly" do
      @response.success?.should == true
      @response.data.should == {"Element"=>
  [{"ElementID"=>"1", "Description"=>"string", "ElementName"=>"string"},
   {"ElementID"=>"2", "Description"=>"string", "ElementName"=>"string"}]}
    end
  end
end

