# ShowMeData

Generic API wrapper for oauth2

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'show_me_data'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install show_me_data

## Usage

```ruby
require 'show_me_data'

opts = { consumer_key: 'key', consumer_secret: 'secret', site: 'API website' } # sample site: https://api.github.com
client = ShowMeData::Client.new(opts) # Create API client
client.fetch_data(api_url: 'API-endpoint') # Get API result of API endpoint # sample API endpoint: /users/githubUsername
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

