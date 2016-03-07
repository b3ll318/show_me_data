module ShowMeData
  class Base
    def display_api_result(api_request)
      {
        header: api_request,
        status: api_request.status,
        body: api_request.body
      }
    end
  end
end
