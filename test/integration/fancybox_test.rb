require 'test_helper'

class FancyboxTest < ActiveSupport::IntegrationCase
  test "fancybox is loaded and works" do
    visit root_path

    fancybox_content = find('#fancybox-content')

    assert !fancybox_content.visible?

    click_link 'Check it out'
    assert fancybox_content.visible?
  end
end
