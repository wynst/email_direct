require 'spec_helper'
require 'nokogiri'
require 'active_support/core_ext/hash/conversions'
ActiveSupport::XmlMini.backend = 'Nokogiri'
#require 'pp'

describe "ActiveSupport hash conversion" do
  before do
  end
  it "converts from hash, and back to hash" do
    # hash_to_xml doesn't work with items with attributes
    hash = {"ElementName" => "RubyTestSource", "Description" => 'a test source item'}.merge({"Creds" => {"AccountName" => "AccountName", "Password" => "Password", "Enc" => "Enc"}, :attributes! => { "Creds" => {"xmlns"=>"http://espapi.net/v1/components/credentials"}}})
    xml   = hash.to_xml
    #puts xml
    xml.should == <<XML
<?xml version="1.0" encoding="UTF-8"?>
<hash>
  <attributes!>
    <Creds>
      <xmlns>http://espapi.net/v1/components/credentials</xmlns>
    </Creds>
  </attributes!>
  <Creds>
    <Enc>Enc</Enc>
    <AccountName>AccountName</AccountName>
    <Password>Password</Password>
  </Creds>
  <Description>a test source item</Description>
  <ElementName>RubyTestSource</ElementName>
</hash>
XML
    # Hash.from_xml ignores namespaces
    xml2   = "<?xml version=\"1.0\" encoding=\"utf-8\"?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\"><soap:Body><Source_AddResponse xmlns=\"http://espapi.net/v1/\"><Source_AddResult xmlns=\"http://espapi.net/v1/components/apiresult\"><Code>10</Code><Message>Invalid AccountName or Password.</Message></Source_AddResult></Source_AddResponse></soap:Body></soap:Envelope>"
    hash2 = Hash.from_xml(xml2)
    #Kernel.pp(hash2)
    hash2.should == {"Envelope"=>
  {"Body"=>
    {"Source_AddResponse"=>
      {"Source_AddResult"=>
        {"Message"=>"Invalid AccountName or Password.", "Code"=>"10"}}}}}
  end
end

