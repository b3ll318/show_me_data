module ShowMeData
  class Client
    include Request

    attr_accessor :consumer_key, :consumer_secret, :site

    ##
    # @params options[Hash]
    # @option opts [String] :consumer_key - API consumer key
    # @option opts [String] :consumer_secret - API consumer secret
    # @option opts [String] :site - API site url
    #
    # client = ShowMeData::Client.new(options)
    #

    def initialize(opts = {})
      @consumer_key = opts[:consumer_key]
      @consumer_secret = opts[:consumer_secret]
      @site = opts[:site]
    end

    def consumer
      OAuth2::Client.new(consumer_key,
                         consumer_secret,
                         site: site)
    end

    def token(user_token)
      OAuth2::AccessToken.new(consumer, user_token)
    end
  end
end
