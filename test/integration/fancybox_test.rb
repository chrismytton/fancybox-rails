require 'test_helper'

class FancyboxTest < ActionDispatch::IntegrationTest
  test "fancybox is loaded and works" do
    visit root_path

    fancybox = find('#fancybox-content', visible: false)

    assert !fancybox.visible?

    click_link 'Check it out'
    assert fancybox.visible?
  end
end
