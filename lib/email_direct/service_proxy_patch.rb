module EmailDirect
  module ServiceProxyPatch
    # same as in original method, but replace strange </ai> in body
    def call_service(options)
      method   = options[:method]
      headers  = { 'content-type' => 'text/xml; charset=utf-8', 'SOAPAction' => self.soap_actions[method] }
      body     = build_request(method, options)
      body     = body.gsub('<ai/>','')
      response = self.http.request_post(self.uri.path, body, headers)
      parse_response(method, response)
    end

    # same as original method, with:
    # 1) inject options hash directly
    def soap_envelope(options, &block)
      xsd = 'http://www.w3.org/2001/XMLSchema'
      env = 'http://schemas.xmlsoap.org/soap/envelope/'
      xsi = 'http://www.w3.org/2001/XMLSchema-instance'
      data = options.clone
      data.delete(:method)
      data = data.to_xml(:skip_instruct => true).gsub("<hash>\n",'').gsub("</hash>\n",'')
      xml = Builder::XmlMarkup.new
      xml.env(:Envelope, 'xmlns:xsd' => xsd, 'xmlns:env' => env, 'xmlns:xsi' => xsi) do
        xml.env(:Body) do
          xml.__send__(options[:method].to_sym, 'xmlns' => self.target_namespace) do
            yield xml if block_given?
            add_credentials!(xml)
            xml << data
          end
        end
      end
      xml
    end
  end
end

