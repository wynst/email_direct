module EmailDirect
  class Response
    attr_reader :xml, :code, :message, :data

    def initialize(xml)
      @xml = xml
      parse_response!
    end

    def success?
      @code == 0
    end

    private
      def parse_response!
        doc  = Nokogiri::XML(@xml)
        elem = doc.xpath("//*[contains(name(),'Result')]", 'xpath' => 'http://espapi.net/v1/components/apiresult')
        if elem.length == 1
          #bug in Nokogiri?
          #@code = elem.css("Code").first.inner_text.to_i
          #@message = elem.css("Message").first.inner_text
          found = 0
          elem.children.each do |node|
            case node.name
              when 'Code'     then found+=1; @code = node.inner_text.to_i;
              when 'Message'  then found+=1; @message = node.inner_text;
            end
          end
          if found != 2
            @code = 0
            @data = Hash.from_xml(elem.first.to_xml)
            #ignore wrapping element (eg. Source_GetAllResult)
            @data = @data[@data.keys.first]
          end
        end
      end

  end
end

