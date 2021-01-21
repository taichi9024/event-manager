ENV['RAILS_ENV'] ||= 'test'
require_relative "../config/environment"

require "simplecov"
SimpleCov.start "rails"

require "coveralls"
Coveralls.wear!("rails")

require "rails/test_help"
require "factory_bot_rails"
require_relative "sign_in_helper"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  #parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.

  # Add more helper methods to be used by all tests here...
end
