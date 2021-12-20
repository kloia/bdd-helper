module BddHelper
  class << self
    attr_accessor :timeout, :base_url, :environment

    def timeout
      @timeout || 20
    end

    def base_url
      unless @base_url.nil? || @base_url.match?(URI::DEFAULT_PARSER.make_regexp)
        raise ArgumentError, "BddHelper.app_host should be set to a url (http://www.example.com). Attempted to set #{@base_url.inspect}."
      end

      @base_url || nil
    end

    def environment
      @environment || nil
    end

    def configure
      yield self
    end
  end
end
