require 'spec_helper'

describe ShowMeData::Request do
  let(:options) { { consumer_key: 'consumer-key',
                    consumer_secret: 'consumer-secret',
                    site: 'https://api.github.com' } }
  let(:client) { ShowMeData::Client.new(options) }

  before(:each) do
    stub_request(:any, /api.github.com/).to_rack(FakeGitHub)
  end

  describe '#request' do
    it 'should call api endpoint' do
      options = { token: '12345' }
      res = client.fetch_data(api_url: '/users/githubtestapiuser18', args: options)
      expect(res).to be_kind_of(Hash)
      expect(res[:status]).to eq 200
    end

    it 'should not raise error when no args params' do
      expect { client.fetch_data(api_url: '/users/githubtestapiuser18') }.not_to raise_error
    end

    it 'should raise error when no api_url' do
      expect { client.fetch_data({}) }.to raise_error
    end
  end
end
