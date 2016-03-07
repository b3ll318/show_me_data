$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'show_me_data'
require 'oauth2'
require 'webmock/rspec'

Dir[File.expand_path(File.join(File.dirname(__FILE__), 'support', '**', '*.rb'))].each do |f|
  require f
end
