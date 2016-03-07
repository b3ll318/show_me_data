module ShowMeData
  class ApiCall < Base
    attr_accessor :path, :args, :user_token

    def initialize(opts)
      @path = opts[:api_url]
      @args = opts[:args] ? opts[:args].to_query : ''
      @user_token = opts[:token]
    end

    # create API ENDPOINT with extra params such as start_date
    def api_path
      fail ArgumentError, "api_url is required" unless path.present?
      "#{path}?#{args}"
    end

    # access API endpoint and display JSON
    # { header: api-headers, status: api-status, body: api-body }
    def run(token)
      res = token.get(api_path)
      display_api_result(res)
    end
  end
end
