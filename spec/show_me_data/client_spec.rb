require 'spec_helper'

describe ShowMeData::Client do
  let(:options) { { consumer_key: 'consumer-key',
                    consumer_secret: 'consumer-secret',
                    site: 'https://api.github.com' } }
  let(:client) { ShowMeData::Client.new(options) }

  before(:each) do
    stub_request(:any, /api.github.com/).to_rack(FakeGitHub)
  end

  describe '#initialize' do
    it { expect(client.consumer_key).to eq options[:consumer_key]  }
    it { expect(client.consumer_secret).to eq options[:consumer_secret]  }
    it { expect(client.site).to eq options[:site]  }
  end

  describe '#consumer' do
    it { expect(client.consumer).to be_kind_of(OAuth2::Client) }
  end
end
