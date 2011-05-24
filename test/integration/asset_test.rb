require 'test_helper'

class AssetTest < ActiveSupport::TestCase
  include Rack::Test::Methods

  def app
    Dummy::Application
  end

  test "fancybox is included in application.js" do
    get "/assets/application.js"
    assert last_response.body.include?('FancyBox - jQuery Plugin')
  end

  test "fancybox css in included in application.css" do
    get "/assets/application.css"
    assert last_response.body.include?('FancyBox - jQuery Plugin')
  end

  test "fancybox assets are loaded" do
    get "/assets/blank.gif"
    assert_equal 200, last_response.status
  end
end
