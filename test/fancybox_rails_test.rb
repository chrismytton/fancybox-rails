require 'test_helper'

class FancyboxRailsTest < ActiveSupport::TestCase
  def setup
    @app = Dummy::Application
  end

  test "jquery.fancybox.js is found as an assert" do
    assert_not_nil @app.assets['jquery.fancybox.js']
  end

  test "jquery.fancybox.css is found as an asset" do
    assert_not_nil @app.assets['jquery.fancybox.css']
  end
end
