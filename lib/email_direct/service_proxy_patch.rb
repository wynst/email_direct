module EmailDirect
  module ServiceProxyPatch
    # same as original, but don't call .target! on custom builder
    def build_request(method, options)
      builder  = underscore("build_#{method}")
      self.respond_to?(builder) ? self.send(builder, options) :
                                  soap_envelope(options).target!
    end
  end
end

