require 'ampercoin/cli'
require 'bundler'
Dir[File.join(File.dirname(__FILE__),"support/**/*.rb")].each { |f| require f }

Bundler.require(:default, :development)
