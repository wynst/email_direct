require 'spec_helper'
require 'email_direct/soap'

describe EmailDirect::SOAP, "#Email_AddWithFields" do

  describe "A valid request without hardcoding parameters (Source,Publications,List,etc) id" do
    before do
      @soap = EmailDirect::SOAP.new(ENV['USERNAME'], ENV['PASSWORD'])
      @soap.debug = true
    end

    it "should run successfully" do
      result = @soap.Source_GetAll()
      result.success?.should == true
      source_id = result.data["Element"].first["ElementID"]

      # create some publication
#      result = @soap.Publication_Add("ElementName" => "Publication1", "Description" => "publication 1 info")
#      result.success?.should == true

#      result = @soap.Publication_Add("ElementName" => "Publication2", "Description" => "publication 2 info")
#      result.success?.should == true

      result = @soap.Publication_GetAll()
      result.success?.should == true
      publication_id1 = result.data["Element"][0]["ElementID"]
      publication_id2 = result.data["Element"][1]["ElementID"]

      # create some list
#      result = @soap.List_Add("ElementName" => "List1", "Description" => "List 1 info")
#      result.success?.should == true

#      result = @soap.List_Add("ElementName" => "List2", "Description" => "List 2 info")
#      result.success?.should == true

      result = @soap.List_GetAll()
      result.success?.should == true
      list_id1 = result.data["Element"][0]["ElementID"]
      list_id2 = result.data["Element"][1]["ElementID"]

      result = @soap.Email_AddWithFields(
        "Email" => "someone@test.com",
        "SourceID" => source_id,
        "Publications" => [
            {"int" => publication_id1},
            {"int" => publication_id2}
          ],
          "Lists" => [
            {"int" => list_id1},
            {"int" => list_id2}
          ],
          "AutoResponderID" => 0,
          "Force" => "false",
          "CustomFields" => [
            {
              "FieldName" => "FirstName",
              "Value" => "Jason"
            }, {
              "FieldName" => "LastName",
              "Value" => "Red"
            }
          ])
      result.success?.should == true
    end
  end

end

