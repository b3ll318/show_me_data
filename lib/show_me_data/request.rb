module ShowMeData
  module Request
    ##
    # @params options[Hash]
    # @option opts [String] :api_url - URL of api to fetch data
    # @option opts [Hash] :args - params needed for API request such as user token, start_date
    #
    def fetch_data(options = {})
      api = ApiCall.new(options)
      client = token(api.user_token)
      api.run(client)
    end
  end
end
