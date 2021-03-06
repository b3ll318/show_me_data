require 'sinatra/base'

# fake external api request and response
class FakeGitHub < Sinatra::Base
  get '/users/:username' do
    json_response 200, 'user.json'
  end

  private

  def json_response(response_code, file_name)
    content_type :json
    status response_code
    File.open(File.dirname(__FILE__) + '/fixtures/' + file_name, 'rb').read
  end
end
