require 'capybara/poltergeist'

# Define a bare test case to use with Capybara
class ActiveSupport::IntegrationCase < ActiveSupport::TestCase
  include Capybara::DSL
  include Rails.application.routes.url_helpers

  def setup
    Capybara.current_driver = :poltergeist
  end

  def teardown
    Capybara.use_default_driver
  end
end
