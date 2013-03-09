require 'test_helper'

class FancyboxRailsTest < ActiveSupport::TestCase
  include Rack::Test::Methods

  def app
    Dummy::Application
  end

  test "jquery.fancybox.js is found as an asset" do
    assert_not_nil app.assets['jquery.fancybox.js']
    assert_not_nil app.assets['fancybox.js']
  end

  test "jquery.fancybox.css is found as an asset" do
    assert_not_nil app.assets['jquery.fancybox.css']
    assert_not_nil app.assets['fancybox.css']
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
