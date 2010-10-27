require 'email_direct'

username = 'username'
password = 'password'

@soap = EmailDirect::SOAP.new(username, password)
#uncomment this line for full debug info
#@soap.debug = true

result = @soap.Source_GetAll()
source_id = result.data["Element"].first["ElementID"]

# create some publication
@soap.Publication_Add("ElementName" => "Publication1", "Description" => "publication 1 info")
@soap.Publication_Add("ElementName" => "Publication2", "Description" => "publication 2 info")

result = @soap.Publication_GetAll()
publication_id1 = result.data["Element"][0]["ElementID"]
publication_id2 = result.data["Element"][1]["ElementID"]

# create some list
result = @soap.List_Add("ElementName" => "List1", "Description" => "List 1 info")
result = @soap.List_Add("ElementName" => "List2", "Description" => "List 2 info")

result = @soap.List_GetAll()
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

puts result.message

